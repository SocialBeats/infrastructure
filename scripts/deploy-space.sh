git clone https://github.com/isa-group/space.git
docker-compose build
docker tag space-space-client:latest space-api-space-client
docker tag space-space-server:latest space-api-space-server
cd space/k8s
chmod +x deploy.sh
./deploy.sh