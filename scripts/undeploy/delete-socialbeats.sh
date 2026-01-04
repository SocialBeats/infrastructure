# ======= KAFKA STUFF =======

# Zookeeper
kubectl delete -f k8s/base/zookeeper/service.yaml
kubectl delete -f k8s/base/zookeeper/deployment.yaml

# Kafka
kubectl delete -f k8s/base/kafka/service.yaml
kubectl delete -f k8s/base/kafka/statefulset.yaml
kubectl delete pvc kafka-data-kafka-0 -n socialbeats

# ======= MONGO DATABASES =======

# Beats-upload
kubectl delete -f k8s/base/mongo-beats-upload/secret.yaml
kubectl delete -f k8s/base/mongo-beats-upload/service.yaml
kubectl delete -f k8s/base/mongo-beats-upload/statefulset.yaml
kubectl delete pvc mongo-data-mongo-beats-upload-0 -n socialbeats
# Beats-interaction
kubectl delete -f k8s/base/mongo-beats-interaction/secret.yaml
kubectl delete -f k8s/base/mongo-beats-interaction/service.yaml
kubectl delete -f k8s/base/mongo-beats-interaction/statefulset.yaml
kubectl delete pvc mongo-data-mongo-beats-interaction-0 -n socialbeats
# User auth
kubectl delete -f k8s/base/mongo-user-auth/secret.yaml
kubectl delete -f k8s/base/mongo-user-auth/service.yaml
kubectl delete -f k8s/base/mongo-user-auth/statefulset.yaml
kubectl delete pvc mongo-data-mongo-user-auth-0 -n socialbeats
# Analytics and dashboards
kubectl delete -f k8s/base/mongo-analytics-and-dashboards/secret.yaml
kubectl delete -f k8s/base/mongo-analytics-and-dashboards/service.yaml
kubectl delete -f k8s/base/mongo-analytics-and-dashboards/statefulset.yaml
kubectl delete pvc mongo-data-mongo-analytics-0 -n socialbeats
# Social
kubectl delete -f k8s/base/mongo-social/secret.yaml
kubectl delete -f k8s/base/mongo-social/service.yaml
kubectl delete -f k8s/base/mongo-social/statefulset.yaml
kubectl delete pvc mongo-data-mongo-social-0 -n socialbeats
# Payments and subscriptions
kubectl delete -f k8s/base/mongo-payments-and-subscriptions/secret.yaml
kubectl delete -f k8s/base/mongo-payments-and-subscriptions/service.yaml
kubectl delete -f k8s/base/mongo-payments-and-subscriptions/statefulset.yaml
kubectl delete pvc mongo-data-mongo-payments-and-suscription-0 -n socialbeats
# ======= REDIS DATABASES =======

# API Gateway
kubectl delete -f k8s/base/redis-api-gateway/secret.yaml
kubectl delete -f k8s/base/redis-api-gateway/service.yaml
kubectl delete -f k8s/base/redis-api-gateway/statefulset.yaml
kubectl delete pvc redis-data-redis-api-gateway-0 -n socialbeats
# User auth
kubectl delete -f k8s/base/redis-user-auth/secret.yaml
kubectl delete -f k8s/base/redis-user-auth/service.yaml
kubectl delete -f k8s/base/redis-user-auth/statefulset.yaml
kubectl delete pvc redis-data-redis-user-auth-0 -n socialbeats
# Analytics and dashboards
kubectl delete -f k8s/base/redis-analytics-and-dashboards/secret.yaml
kubectl delete -f k8s/base/redis-analytics-and-dashboards/service.yaml
kubectl delete -f k8s/base/redis-analytics-and-dashboards/statefulset.yaml
kubectl delete pvc redis-data-redis-analytics-0 -n socialbeats
# Beats interaction
kubectl delete -f k8s/base/redis-beats-interaction/secret.yaml
kubectl delete -f k8s/base/redis-beats-interaction/service.yaml
kubectl delete -f k8s/base/redis-beats-interaction/statefulset.yaml
kubectl delete pvc redis-data-beats-interaction-redis-0 -n socialbeats
# ======= MICROSERVICES =======

# API Gateway
kubectl delete -f k8s/base/api-gateway/secret.yaml
kubectl delete -f k8s/base/api-gateway/configmap.yaml
kubectl delete -f k8s/base/api-gateway/service.yaml
kubectl delete -f k8s/base/api-gateway/deployment.yaml

# User auth
kubectl delete -f k8s/base/user-auth/secret.yaml
kubectl delete -f k8s/base/user-auth/configmap.yaml
kubectl delete -f k8s/base/user-auth/service.yaml
kubectl delete -f k8s/base/user-auth/deployment.yaml

# Beats upload
kubectl delete -f k8s/base/beats-upload/secret.yaml
kubectl delete -f k8s/base/beats-upload/configmap.yaml
kubectl delete -f k8s/base/beats-upload/service.yaml
kubectl delete -f k8s/base/beats-upload/deployment.yaml

# Beats interaction
kubectl delete -f k8s/base/beats-interaction/secret.yaml
kubectl delete -f k8s/base/beats-interaction/configmap.yaml
kubectl delete -f k8s/base/beats-interaction/service.yaml
kubectl delete -f k8s/base/beats-interaction/deployment.yaml

# Analytics and dashboards
kubectl delete -f k8s/base/analytics-and-dashboards/secret.yaml
kubectl delete -f k8s/base/analytics-and-dashboards/configmap.yaml
kubectl delete -f k8s/base/analytics-and-dashboards/service.yaml
kubectl delete -f k8s/base/analytics-and-dashboards/deployment.yaml

# Social
kubectl delete -f k8s/base/social/secret.yaml
kubectl delete -f k8s/base/social/configmap.yaml
kubectl delete -f k8s/base/social/service.yaml
kubectl delete -f k8s/base/social/deployment.yaml

# Payments and subscriptions
kubectl delete -f k8s/base/payments-and-subscriptions/secret.yaml
kubectl delete -f k8s/base/payments-and-subscriptions/configmap.yaml
kubectl delete -f k8s/base/payments-and-subscriptions/service.yaml
kubectl delete -f k8s/base/payments-and-subscriptions/deployment.yaml

# ======= FRONTEND =======

kubectl delete -f k8s/base/frontend/secret.yaml
kubectl delete -f k8s/base/frontend/configmap.yaml
kubectl delete -f k8s/base/frontend/nginx-configmap.yaml
kubectl delete -f k8s/base/frontend/service.yaml
kubectl delete -f k8s/base/frontend/deployment.yaml
