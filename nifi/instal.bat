
# https://github.com/cetic/helm-nifi

helm repo add cetic https://cetic.github.io/helm-charts
helm repo update

helm install my-release cetic/nifi

helm install nifi cetic/nifi --set zookeeper.enabled=false