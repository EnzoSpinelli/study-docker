import docker
import datetime
import requests
client = docker.DockerClient(base_url='unix://var/run/docker.sock') #essa linha significa que o cliente vai se conectar ao docker daemon local
webhook_url = "https://fleetcor.webhook.office.com/webhookb2/e09fe926-74b4-46fa-9433-35152e50d8a5@db84cc25-a34d-48ae-81b9-7d26ab3769eb/IncomingWebhook/1311584c5c1844d4b7c1c090e939d46b/dfd1390b-68c8-442d-a7ed-9f6a5765e495/V2AmA8Bo1egDIs6hwy7PwX4gTx2c6sIWuyuHE53AHu1Zo1"  # Replace with your actual webhook URL

for event in client.events(decode=True, filters={"event": "die"}):
    print(event)
    container_id = event['id']
    print(container_id)
    container_name = event['Actor']['Attributes']['name']
    print(container_name)
    epoch_time = event['time']
    print(epoch_time)
    date_time = datetime.datetime.fromtimestamp(epoch_time)

    payload = {"text": "O Container (%s) (ID: (%s) has stopped at (%s)" % (container_name, container_id, date_time)}
    print (payload)
    requests.post(webhook_url, json=payload)
    ###########################################################################
