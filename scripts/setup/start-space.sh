kubectl apply -f ./k8s/base/space/controllers/
kubectl apply -f ./k8s/base/space/config/
kubectl apply -f ./k8s/base/space/pods/
kubectl apply -f ./k8s/base/space/load-balancer/
kubectl get pods -n socialbeats