#!/data/data/com.termux/files/usr/bin/bash

# Definición de colores para darle un estilo profesional
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # Sin color

# Limpiar la terminal antes de iniciar
clear

# Banner en arte ASCII para "Pelusa Dark"
echo -e "${CYAN}"
cat << 'EOF'
 ____       _                    ____             _    
|  _ \ ___ | |_   _ ___  __ _   |  _ \  __ _ _ __| | __
| |_) / _ \| | | | / __|/ _` |  | | | |/ _` | '__| |/ /
|  __/  __/| | |_| \__ \ (_| |  | |_| | (_| | |  |   < 
|_|   \___||_|\__,_|___/\__,_|  |____/ \__,_|_|  |_|\_\
EOF
echo -e "${NC}"

# Redes Sociales y Contacto
echo -e "${MAGENTA}============================================================${NC}"
echo -e "${YELLOW}▶ YouTube:${NC}  https://m.youtube.com/@pelusadarkcheats"
echo -e "${YELLOW}▶ GitHub:${NC}   https://github.com/devperry/"
echo -e "${YELLOW}▶ Discord:${NC}  michael.json | https://discord.gg/R8PrhFkkKw"
echo -e "${MAGENTA}============================================================${NC}"
echo ""

echo -e "${BLUE}[*] Inicializando el script de instalación...${NC}"
sleep 1.5 # Pequeña pausa para que se lea el banner

# Pasos de instalación con salida limpia (oculta el texto basura de pkg/apk)
echo -e "${CYAN}[1/4]${NC} Actualizando repositorios y paquetes base..."
pkg update -y > /dev/null 2>&1 && pkg upgrade -y > /dev/null 2>&1

echo -e "${CYAN}[2/4]${NC} Instalando proot-distro..."
pkg install -y proot-distro > /dev/null 2>&1

echo -e "${CYAN}[3/4]${NC} Descargando e instalando Alpine Linux..."
proot-distro install alpine > /dev/null 2>&1

echo -e "${CYAN}[4/4]${NC} Configurando entorno Alpine (Instalando Java 8 y Git)..."
proot-distro login alpine -- sh -c "apk update > /dev/null 2>&1 && apk add openjdk8 git > /dev/null 2>&1"

# Mensaje de finalización
echo ""
echo -e "${GREEN}============================================================${NC}"
echo -e "${GREEN}[✔] ¡Instalación completada con éxito!${NC}"
echo -e "${GREEN}============================================================${NC}"
echo ""
echo -e "Para ingresar a tu nuevo sistema Alpine, simplemente ejecuta:"
echo -e "${YELLOW}proot-distro login alpine${NC}"
echo ""
