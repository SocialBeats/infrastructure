# ======= MONGO DATABASES =======

# Beats-upload
kubectl apply -f k8s/base/mongo-beats-upload/secret.yaml
kubectl apply -f k8s/base/mongo-beats-upload/service.yaml
kubectl apply -f k8s/base/mongo-beats-upload/statefulset.yaml

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

# Social
kubectl apply -f k8s/base/mongo-social/secret.yaml
kubectl apply -f k8s/base/mongo-social/service.yaml
kubectl apply -f k8s/base/mongo-social/statefulset.yaml

# ======= REDIS DATABASES =======

# API Gateway
kubectl apply -f k8s/base/redis-api-gateway/secret.yaml
kubectl apply -f k8s/base/redis-api-gateway/service.yaml
kubectl apply -f k8s/base/redis-api-gateway/statefulset.yaml

# User auth
kubectl apply -f k8s/base/redis-user-auth/secret.yaml
kubectl apply -f k8s/base/redis-user-auth/service.yaml
kubectl apply -f k8s/base/redis-user-auth/statefulset.yaml

# Analytics and dashboards
kubectl apply -f k8s/base/redis-analytics-and-dashboards/secret.yaml
kubectl apply -f k8s/base/redis-analytics-and-dashboards/service.yaml
kubectl apply -f k8s/base/redis-analytics-and-dashboards/statefulset.yaml


# ======= MICROSERVICES =======

# API Gateway
kubectl apply -f k8s/base/api-gateway/secret.yaml
kubectl apply -f k8s/base/api-gateway/configmap.yaml
kubectl apply -f k8s/base/api-gateway/service.yaml
kubectl apply -f k8s/base/api-gateway/deployment.yaml

# User auth
kubectl apply -f k8s/base/user-auth/secret.yaml
kubectl apply -f k8s/base/user-auth/configmap.yaml
kubectl apply -f k8s/base/user-auth/service.yaml
kubectl apply -f k8s/base/user-auth/deployment.yaml

# Beats upload
kubectl apply -f k8s/base/beats-upload/secret.yaml
kubectl apply -f k8s/base/beats-upload/configmap.yaml
kubectl apply -f k8s/base/beats-upload/service.yaml
kubectl apply -f k8s/base/beats-upload/deployment.yaml

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

# Social
kubectl apply -f k8s/base/social/secret.yaml
kubectl apply -f k8s/base/social/configmap.yaml
kubectl apply -f k8s/base/social/service.yaml
kubectl apply -f k8s/base/social/deployment.yaml

# ======= FRONTEND =======

kubectl apply -f k8s/base/frontend/secret.yaml
kubectl apply -f k8s/base/frontend/configmap.yaml
kubectl apply -f k8s/base/frontend/service.yaml
kubectl apply -f k8s/base/frontend/deployment.yaml

# ======= KUBERNETES INGRESS =======

# kubectl apply -f k8s/ingress/ingress.yaml
