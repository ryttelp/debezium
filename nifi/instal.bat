# Operator https://konpyutaika.github.io/nifikop/docs/2_deploy_nifikop/2_customizable_install_with_helm
# https://github.com/cetic/helm-nifi

helm repo add cetic https://cetic.github.io/helm-charts
helm repo update

helm install my-release cetic/nifi

helm install nifi cetic/nifi --set zookeeper.enabled=false