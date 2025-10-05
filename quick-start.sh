#!/bin/bash

# Script de Início Rápido do Proxy Manager
# Este script baixa e instala automaticamente o Proxy Manager

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Função para imprimir mensagens coloridas
print_message() {
    echo -e "${2}${1}${NC}"
}

# Função para imprimir cabeçalho
print_header() {
    clear
    print_message "╔══════════════════════════════════════════════════════════════╗" $CYAN
    print_message "║                    PROXY MANAGER v1.0                       ║" $CYAN
    print_message "║                   Instalação Rápida                         ║" $CYAN
    print_message "║                    Ubuntu/Debian                             ║" $CYAN
    print_message "╚══════════════════════════════════════════════════════════════╝" $CYAN
    echo ""
}

# Função para verificar se está executando como root
check_root() {
    if [[ $EUID -ne 0 ]]; then
        print_message "Este script deve ser executado como root (sudo)" $RED
        print_message "Execute: curl -sSL https://raw.githubusercontent.com/alfalemos-cyber/cyber//main/quick-start.sh | sudo bash" $YELLOW
        exit 1
    fi
}

# Função para verificar conectividade
check_connectivity() {
    print_message "Verificando conectividade..." $YELLOW
    if ! ping -c 1 github.com &> /dev/null; then
        print_message "Erro: Sem conexão com a internet" $RED
        exit 1
    fi
    print_message "Conectividade: OK" $GREEN
}

# Função para baixar e instalar
download_and_install() {
    print_message "Baixando Proxy Manager..." $YELLOW
    
    # Criar diretório temporário
    TEMP_DIR=$(mktemp -d)
    cd "$TEMP_DIR"
    
    # URL do projeto (substitua pela URL real)
    PROJECT_URL="https://github.com/alfalemos-cyber/cyber/raw/main/main.tar.gz"
    
    # Baixar projeto
    if wget -q "$PROJECT_URL" -O proxy-manager.tar.gz; then
        print_message "Download concluído" $GREEN
    else
        print_message "Erro ao baixar o projeto" $RED
        print_message "Tente baixar manualmente de: $PROJECT_URL" $YELLOW
        exit 1
    fi
    
    # Extrair
    print_message "Extraindo arquivos..." $YELLOW
    tar -xzf proxy-manager.tar.gz
    
    # Encontrar diretório extraído
    EXTRACTED_DIR=$(find . -name "proxy-manager*" -type d | head -1)
    
    if [[ -z "$EXTRACTED_DIR" ]]; then
        print_message "Erro ao extrair arquivos" $RED
        exit 1
    fi
    
    cd "$EXTRACTED_DIR"
    
    # Executar instalação
    if [[ -f "install.sh" ]]; then
        chmod +x install.sh
        print_message "Iniciando instalação..." $WHITE
        ./install.sh
    else
        print_message "Script de instalação não encontrado" $RED
        exit 1
    fi
    
    # Limpar arquivos temporários
    cd /
    rm -rf "$TEMP_DIR"
}

# Função principal
main() {
    print_header
    
    print_message "Este script irá baixar e instalar o Proxy Manager automaticamente" $WHITE
    print_message "Pressione Ctrl+C para cancelar ou Enter para continuar..." $YELLOW
    read
    
    check_root
    check_connectivity
    download_and_install
    
    print_message "Instalação rápida concluída!" $GREEN
    print_message "Execute 'proxy-manager' para começar" $CYAN
}

# Tratamento de sinais
trap 'print_message "\nInstalação cancelada pelo usuário" $YELLOW; exit 1' INT TERM

# Executar função principal
main "$@"
