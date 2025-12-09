# ======= MONGO DATABASES =======

# Beats-interaction
kubectl apply -f k8s/base/mongo-beats-interaction/secret.yaml
kubectl apply -f k8s/base/mongo-beats-interaction/service.yaml
kubectl apply -f k8s/base/mongo-beats-interaction/statefulset.yaml

# User auth
kubectl apply -f k8s/base/mongo-user-auth/secret.yaml
kubectl apply -f k8s/base/mongo-user-auth/service.yaml
kubectl apply -f k8s/base/mongo-user-auth/statefulset.yaml

# Analytics and dashboards
kubectl apply -f k8s/base/mongo-analytics-and-dashboards/secret.yaml
kubectl apply -f k8s/base/mongo-analytics-and-dashboards/service.yaml
kubectl apply -f k8s/base/mongo-analytics-and-dashboards/statefulset.yaml

# ======= REDIS DATABASES =======

# User auth
kubectl apply -f k8s/base/redis-user-auth/secret.yaml
kubectl apply -f k8s/base/redis-user-auth/service.yaml
kubectl apply -f k8s/base/redis-user-auth/statefulset.yaml

# Analytics and dashboards
kubectl apply -f k8s/base/redis-analytics-and-dashboards/secret.yaml
kubectl apply -f k8s/base/redis-analytics-and-dashboards/service.yaml
kubectl apply -f k8s/base/redis-analytics-and-dashboards/statefulset.yaml


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

# Analytics and dashboards
kubectl apply -f k8s/base/analytics-and-dashboards/secret.yaml
kubectl apply -f k8s/base/analytics-and-dashboards/configmap.yaml
kubectl apply -f k8s/base/analytics-and-dashboards/service.yaml
kubectl apply -f k8s/base/analytics-and-dashboards/deployment.yaml


# ======= FRONTEND =======

kubectl apply -f k8s/base/frontend/secret.yaml
kubectl apply -f k8s/base/frontend/configmap.yaml
kubectl apply -f k8s/base/frontend/service.yaml
kubectl apply -f k8s/base/frontend/deployment.yaml

# ======= KUBERNETES INGRESS =======

# kubectl apply -f k8s/ingress/ingress.yaml
