helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add cilium https://helm.cilium.io
helm repo update
helm install tetragon cilium/tetragon -n kube-system
