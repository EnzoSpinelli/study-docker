Conceitos:


Manager:# Gerencia o cluster
# Responsável por receber as requisições do cliente e distribuir as tarefas entre os workers.
# Pode ser um ou mais, mas é recomendado ter pelo menos 3

Worker:# Executa as tarefas
# Recebe as tarefas dos managers e executa os containers.
# Pode ser um ou mais, mas é recomendado ter pelo menos 3


docker service
    |
    |
    v  
________          ______
|Manager| -----> |worker|
|_______|        |______|


Raft consenensus group:
# É um algoritmo de consenso que garante que todos os managers tenham a mesma visão do estado do cluster.
# Ele é responsável por garantir que as tarefas sejam distribuídas de forma justa entre os workers
# e que o estado do cluster seja consistente.