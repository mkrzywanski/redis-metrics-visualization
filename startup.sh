#bin/sh

kubectl apply -f ./redis/redis-deploy.yml &\
kubectl apply -f ./redis/redis-svc.yml  &\
kubectl create configmap prometheus-config --from-file=./prometheus/prometheus.yml &\
kubectl apply -f ./prometheus/prometheus-deploy.yml &\
kubectl apply -f ./prometheus/prometheus-svc.yml &\
kubectl apply -f ./grafana/grafana-deploy.yml &\
kubectl apply -f ./grafana/grafana-svc.yml