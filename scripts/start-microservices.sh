kubectl apply -f k8s/base/mongo-beats-interaction/
kubectl apply -f k8s/base/beats-interaction/
kubectl logs deploy/beats-interaction -f