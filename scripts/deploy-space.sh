# git clone https://github.com/isa-group/space.git
cd space
# docker-compose build
# docker images | grep space
# docker tag space-space-client space-api-space-client
# docker tag space-space-server space-api-space-server
# docker tag space-space-client space-api-space-client:latest
# docker tag space-space-server space-api-space-server:latest
cd k8s
chmod +x deploy.sh
./deploy.sh
cd ..
cd ..
kubectl get pods -w