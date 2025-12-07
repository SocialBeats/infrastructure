# beats interaction
kubectl apply -f k8s/base/mongo-beats-interaction/
kubectl apply -f k8s/base/beats-interaction/
kubectl logs deploy/beats-interaction -f
# user auth
kubectl apply -f k8s/base/mongo-user-auth/
kubectl apply -f k8s/base/redis-user-auth/
kubectl apply -f k8s/base/user-auth/
# frontend
kubectl apply -f k8s/base/frontend