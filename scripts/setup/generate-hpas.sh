kubectl get pods -n kube-system | grep metrics-server
kubectl apply -f ./k8s/hpas/analytics-and-dashboards-hpa.yaml
kubectl apply -f ./k8s/hpas/api-gateway-hpa.yaml
kubectl apply -f ./k8s/hpas/beats-interaction-hpa.yaml
kubectl apply -f ./k8s/hpas/beats-upload-hpa.yaml
kubectl apply -f ./k8s/hpas/frontend-hpa.yaml
kubectl apply -f ./k8s/hpas/social-hpa.yaml
kubectl apply -f ./k8s/hpas/user-auth-hpa.yaml