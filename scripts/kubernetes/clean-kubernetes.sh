kubectl delete all --all -n socialbeats
kubectl delete configmap --all -n socialbeats
kubectl delete secret --all -n socialbeats
kubectl delete pvc --all -n socialbeats
kubectl delete ingress --all -n socialbeats

kubectl get all
kubectl get configmap
kubectl get secret
kubectl get pvc
kubectl get ingress
