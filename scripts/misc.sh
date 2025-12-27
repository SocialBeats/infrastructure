# delete pod
kubectl delete pod redis-user-auth-0

# storageclass
kubectl get storageclass

# pvc
kubectl get pvc

# pod info
kubectl describe pod redis-user-auth-0

# see logs
kubectl logs deploy/analytics-and-dashboards -f

# update stuff
kubectl apply -f k8s/base/analytics-and-dashboards/configmap.yaml
kubectl rollout restart deployment/analytics-and-dashboards
kubectl rollout status deployment/analytics-and-dashboards
kubectl logs deployment/analytics-and-dashboards -f

# update api-gateway
kubectl rollout restart deployment/api-gateway
kubectl rollout status deployment/api-gateway
kubectl logs deployment/api-gateway -f

# update frontend
kubectl apply -f k8s/base/frontend/secret.yaml
kubectl apply -f k8s/base/frontend/configmap.yaml
kubectl apply -f k8s/base/frontend/nginx-configmap.yaml
kubectl apply -f k8s/base/frontend/service.yaml
kubectl apply -f k8s/base/frontend/deployment.yaml
kubectl rollout restart deployment/frontend
kubectl rollout status deployment/frontend
kubectl logs deployment/frontend -f

# update ingress
kubectl apply -f k8s/ingress/ingress-api-gateway.yaml
kubectl apply -f k8s/ingress/ingress-frontend.yaml
kubectl apply -f k8s/ingress/ingress-space.yaml
kubectl rollout restart deployment ingress-nginx-controller -n ingress-nginx

# update space
kubectl rollout restart deployment/space-nginx
kubectl rollout restart deployment/space-client
kubectl rollout restart deployment/space-server

# debuging unavailable pods
kubectl describe pod frontend-56f54ff8dd-l8zbm