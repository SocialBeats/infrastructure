kubectl apply -f k8s/base/space-mongodb/secret.yaml
kubectl apply -f k8s/base/space-mongodb/configmap.yaml
kubectl apply -f k8s/base/space-mongodb/service.yaml
kubectl apply -f k8s/base/space-mongodb/statefulset.yaml
kubectl apply -f k8s/base/space-redis/service.yaml
kubectl apply -f k8s/base/space-redis/statefulset.yaml
kubectl apply -f k8s/base/space-server/secret.yaml
kubectl apply -f k8s/base/space-server/service.yaml
kubectl apply -f k8s/base/space-server/deployment.yaml
kubectl apply -f k8s/base/space-client/service.yaml
kubectl apply -f k8s/base/space-client/deployment.yaml
kubectl apply -f k8s/base/space-nginx/configmap.yaml
kubectl apply -f k8s/base/space-nginx/pvc-space-statics.yaml
kubectl apply -f k8s/base/space-nginx/service.yaml
kubectl apply -f k8s/base/space-nginx/deployment.yaml
kubectl rollout restart deployment/space-nginx -n socialbeats
kubectl rollout restart deployment/space-client -n socialbeats
kubectl rollout restart deployment/space-server -n socialbeats
kubectl apply -f k8s/ingress/ingress-space.yaml
