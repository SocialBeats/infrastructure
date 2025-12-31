kubectl apply -f ./k8s/base/space/controllers/
kubectl apply -f ./k8s/base/space/config/
kubectl apply -f ./k8s/base/space/pods/
kubectl apply -f ./k8s/base/space/load-balancer/
kubectl get pods -n socialbeats



kubectl apply -f ./k8s/base/space/config/
kubectl apply -f ./k8s/base/space/pods/
kubectl apply -f ./k8s/base/space/load-balancer-deployment/
kubectl get pods -n socialbeats

kubectl delete -f ./k8s/base/space/config/
kubectl delete -f ./k8s/base/space/pods/
kubectl delete -f ./k8s/base/space/load-balancer-deployment/