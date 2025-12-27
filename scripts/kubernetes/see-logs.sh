# Mongo databases
kubectl logs deploy/mongo-analytics-and-dashboards -f -n socialbeats
kubectl logs deploy/mongo-beats-interaction -f -n socialbeats
kubectl logs deploy/mongo-beats-upload -f -n socialbeats
kubectl logs deploy/mongo-social -f -n socialbeats
kubectl logs deploy/mongo-user-auth -f -n socialbeats

# Redis databases
kubectl logs deploy/redis-analytics-and-dashboards -f -n socialbeats
kubectl logs deploy/redis-api-gateway -f -n socialbeats
kubectl logs deploy/redis-user-auth -f -n socialbeats

# Microservices
kubectl logs deploy/analytics-and-dashboards -f -n socialbeats
kubectl logs deploy/beats-interaction -f -n socialbeats
kubectl logs deploy/beats-upload -f -n socialbeats
kubectl logs deploy/social -f -n socialbeats
kubectl logs deploy/user-auth -f -n socialbeats

# Frontend
kubectl logs deploy/frontend -f -n socialbeats

# Gateway
kubectl logs deploy/api-gateway -f -n socialbeats

# Kafka
kubectl logs statefulset/kafka -f -n socialbeats
kubectl logs deploy/zookeeper -f -n socialbeats

# Space
kubectl logs deploy/space-server -n socialbeats
kubectl logs deploy/space-client -n socialbeats
kubectl logs deploy/space-nginx -n socialbeats

kubectl logs deploy/client-deployment -n socialbeats
kubectl logs deploy/server-deployment -n socialbeats
kubectl logs deploy/mongodb-deployment -n socialbeats
kubectl logs deploy/redis-deployment -n socialbeats

