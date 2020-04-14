# redis-metrics-visualization

This project shows an example on how to monitor a single pod deployment with redis using redis-exporter, Prometheus and Grafana. Pods are deployed on given kubernetes cluster using `kubectl`.

## Getting Started

To run all of the deployments and services you can use `startup.sh` script. For simplicity `NodePort` is used to expose services outside of the cluster. So to access services use `NODE_HOST`:`PORT`. For example to check the ip address of the node on `minikube` use :
```
minikube ip
```

Default `NodePorts` for services are as follows
| Service       | Node-Port           |
| ------------- |:-------------:|
| redis-svc         | 30002 (exporter)|
| prometheus-svc     | 30000      |
| grafana-svc |  30001     |


## Built With

* [Kubernetes](https://kubernetes.io/pl/) - The container orchestrator.
* [Minikube](https://github.com/kubernetes/minikube) - local Kubernetes cluster.
* [Redis](https://redis.io/) - in-memory key-value store.
* [Redis-exporter](https://github.com/oliver006/redis_exporter) - exporter for Redis metrics.
* [Prometheus](https://prometheus.io/) - monitoring system.
* [Grafana](https://grafana.com/) - visualizer and analytics for data.

## License

This project is licensed under the MIT License.
