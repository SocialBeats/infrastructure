# Mongo databases
kubectl logs deploy/mongo-analytics-and-dashboards -f
kubectl logs deploy/mongo-beats-interaction -f
kubectl logs deploy/mongo-beats-upload -f
kubectl logs deploy/mongo-social -f
kubectl logs deploy/mongo-user-auth -f

# Redis databases
kubectl logs deploy/redis-analytics-and-dashboards -f
kubectl logs deploy/redis-api-gateway -f
kubectl logs deploy/redis-user-auth -f

# Microservices
kubectl logs deploy/analytics-and-dashboards -f
kubectl logs deploy/beats-interaction -f
kubectl logs deploy/beats-upload -f
kubectl logs deploy/social -f
kubectl logs deploy/user-auth -f

# Frontend
kubectl logs deploy/frontend -f

# Gateway
kubectl logs deploy/api-gateway -f

# Kafka
kubectl logs statefulset/kafka -f
kubectl logs deploy/zookeeper -f

# Space
kubectl logs deploy/space-server -f
kubectl logs deploy/space-client -f
kubectl logs deploy/space-nginx -f


