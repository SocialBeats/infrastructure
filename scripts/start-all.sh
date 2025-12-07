# ======= MONGO DATABASES =======

# Beats-interaction
kubectl apply -f k8s/base/mongo-beats-interaction/secret.yaml
kubectl apply -f k8s/base/mongo-beats-interaction/service.yaml
kubectl apply -f k8s/base/mongo-beats-interaction/statefulset.yaml

# User auth
kubectl apply -f k8s/base/mongo-user-auth/secret.yaml
kubectl apply -f k8s/base/mongo-user-auth/service.yaml
kubectl apply -f k8s/base/mongo-user-auth/statefulset.yaml

# ======= REDIS DATABASES =======

# User auth
kubectl apply -f k8s/base/redis-user-auth/secret.yaml
kubectl apply -f k8s/base/redis-user-auth/service.yaml
kubectl apply -f k8s/base/redis-user-auth/statefulset.yaml

# ======= MICROSERVICES =======

# User auth
kubectl apply -f k8s/base/user-auth/secret.yaml
kubectl apply -f k8s/base/user-auth/configmap.yaml
kubectl apply -f k8s/base/user-auth/service.yaml
kubectl apply -f k8s/base/user-auth/deployment.yaml

# Beats interaction
kubectl apply -f k8s/base/beats-interaction/secret.yaml
kubectl apply -f k8s/base/beats-interaction/configmap.yaml
kubectl apply -f k8s/base/beats-interaction/service.yaml
kubectl apply -f k8s/base/beats-interaction/deployment.yaml

# ======= FRONTEND =======

kubectl apply -f k8s/base/frontend/secret.yaml
kubectl apply -f k8s/base/frontend/configmap.yaml
kubectl apply -f k8s/base/frontend/service.yaml
kubectl apply -f k8s/base/frontend/deployment.yaml

# ======= KUBERNETES INGRESS =======

# kubectl apply -f k8s/ingress/ingress.yaml
