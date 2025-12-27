#!/bin/bash

# Script mejorado para desplegar SPACE en Kubernetes
# Basado en el repositorio oficial: https://github.com/isa-group/space

set -e  # Salir si hay algún error

echo "🚀 Desplegando SPACE en Kubernetes..."
echo ""

# Colores para output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Función para verificar prerequisitos
check_prerequisites() {
    echo -e "${YELLOW}📋 Verificando prerequisitos...${NC}"
    
    # Verificar kubectl
    if ! command -v kubectl &> /dev/null; then
        echo -e "${RED}❌ kubectl no está instalado${NC}"
        exit 1
    fi
    
    # Verificar conexión al cluster
    if ! kubectl cluster-info &> /dev/null; then
        echo -e "${RED}❌ No se puede conectar al cluster de Kubernetes${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}✅ Todos los prerequisitos están OK${NC}"
    echo ""
}

# Función para clonar el repositorio
clone_repository() {
    echo -e "${YELLOW}📦 Clonando repositorio SPACE...${NC}"
    
    if [ -d "space" ]; then
        echo -e "${YELLOW}⚠️  El directorio 'space' ya existe. ¿Deseas eliminarlo y clonar de nuevo? (y/n)${NC}"
        read -r response
        if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
            rm -rf space
        else
            echo -e "${YELLOW}➡️  Usando repositorio existente${NC}"
            cd space
            return
        fi
    fi
    
    git clone https://github.com/isa-group/space.git
    cd space
    
    echo -e "${GREEN}✅ Repositorio clonado exitosamente${NC}"
    echo ""
}

# Función para desplegar SPACE
deploy_space() {
    echo -e "${YELLOW}🔧 Desplegando SPACE en Kubernetes...${NC}"
    
    cd k8s
    
    # Dar permisos de ejecución al script
    chmod +x deploy.sh
    
    # Ejecutar el script de despliegue
    ./deploy.sh
    
    echo -e "${GREEN}✅ Despliegue completado${NC}"
    echo ""
}

# Función para verificar el estado
check_status() {
    echo -e "${YELLOW}🔍 Verificando estado de los pods...${NC}"
    
    echo "Esperando a que los pods estén listos (esto puede tardar unos minutos)..."
    kubectl wait --for=condition=ready pod -l app=space-server --timeout=300s 2>/dev/null || true
    
    echo ""
    echo -e "${GREEN}📊 Estado actual de los pods:${NC}"
    kubectl get pods -A | grep space || kubectl get pods
    
    echo ""
    echo -e "${GREEN}📊 Servicios desplegados:${NC}"
    kubectl get svc -A | grep space || kubectl get svc
    
    echo ""
    echo -e "${GREEN}📊 Ingress configurado:${NC}"
    kubectl get ingress -A | grep space || kubectl get ingress
}

# Función principal
main() {
    check_prerequisites
    
    # Si no estamos en el directorio space, clonarlo
    if [ ! -f "k8s/deploy.sh" ]; then
        clone_repository
    else
        cd k8s
    fi
    
    deploy_space
    check_status
    
    echo ""
    echo -e "${GREEN}🎉 ¡SPACE desplegado exitosamente!${NC}"
    echo ""
    echo -e "${GREEN}🌐 Accede a SPACE en:${NC} http://localhost"
    echo -e "${GREEN}👤 Credenciales por defecto:${NC}"
    echo -e "   Username: ${YELLOW}admin${NC}"
    echo -e "   Password: ${YELLOW}space4all${NC}"
    echo ""
    echo -e "${YELLOW}💡 Comandos útiles:${NC}"
    echo -e "   Ver logs del servidor: ${YELLOW}kubectl logs -f deployment/space-server${NC}"
    echo -e "   Ver logs del cliente:  ${YELLOW}kubectl logs -f deployment/space-client${NC}"
    echo -e "   Ver todos los pods:    ${YELLOW}kubectl get pods${NC}"
    echo ""
}

# Ejecutar
main