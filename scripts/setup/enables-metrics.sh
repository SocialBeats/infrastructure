kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
# kubectl edit deployment metrics-server -n kube-system
## add this in args prop:
# - --kubelet-insecure-tls
# - --kubelet-preferred-address-types=InternalIP
