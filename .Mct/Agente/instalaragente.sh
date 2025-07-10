Desinstalando:
sudo ./svc.sh stop
sudo ./svc.sh uninstall
rm -rf .runner
./config.sh remove


Para instalar agente na máquina:

Se for host:

1.Entrar como sudo su azuredevops
2.Ir no /app
3.Entrar no az_devops_agent_host
4.Entrar no github-runner
5.Criar uma pasta com a org em questão, por exemplo "mkdir semparar-alm"
6.Entrar no github e pegar o passo a passo de instalação... ( Colocar o Runner image diacordo com o OS)

========================================================================================================================================================================================================
========================================================================================================================================================================================================
Em Linux:

curl -o actions-runner-linux-x64-2.323.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.323.0/actions-runner-linux-x64-2.323.0.tar.gz

echo "0dbc9bf5a58620fc52cb6cc0448abcca964a8d74b5f39773b7afcad9ab691e19  actions-runner-linux-x64-2.323.0.tar.gz" | shasum -a 256 -c

tar xzf ./actions-runner-linux-x64-2.323.0.tar.gz

export token=BQR24PMZM5OH3C4W3FN5M3TIIMQYK

./config.sh --unattended --name bredt1-svmanh46 --url https://github.com/SemParar-B2B --labels weblogic,bredt1-svmanh46.dtc.brflt.corp,bredt1-svmanh46 --runnergroup Default --auth PAT  --token $token --replace --work _work

sudo ./svc.sh install 
sudo ./svc.sh status
sudo ./svc.sh start

========================================================================================================================================================================================================
========================================================================================================================================================================================================



./config.sh --unattended --name bredt-svmanp46 --url https://github.com/SemParar-CPP --labels weblogic bredt-svmanp46 --runnergroup fleetcor-hml --auth PAT  --token $token --replace --work _work
