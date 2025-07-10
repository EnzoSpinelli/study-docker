










                         _________> o (STDIN)
                        |
                        |
                        |
                        |
                        |
CONTAINER(PROCESSO) --------------> 1 (STDOUT) ------------------> Log Aggregator (Fluentd, Grafana, etc.)
                        |                                                            |
                        |                                                            |
                        |                                                            |       (banco de dados de logs) 
                        |                                                            |____> DB (Elasticsearch, InfluxDB, etc.)   <-----Frontend para ver os Logs ( Kibana, por exemplo)
                        |_________> 2 (STDERR)