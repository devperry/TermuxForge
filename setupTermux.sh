#!/data/data/com.termux/files/usr/bin/bash

# Colors setup
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

# Function to clear screen and print the banner
show_banner() {
    clear
    echo -e "${CYAN}"
    cat << 'EOF'
 ____       _                    ____             _    
|  _ \ ___ | |_   _ ___  __ _   |  _ \  __ _ _ __| | __
| |_) / _ \| | | | / __|/ _` |  | | | |/ _` | '__| |/ /
|  __/  __/| | |_| \__ \ (_| |  | |_| | (_| | |  |   < 
|_|   \___||_|\__,_|___/\__,_|  |____/ \__,_|_|  |_|\_\
EOF
    echo -e "${NC}"
    echo -e "${MAGENTA}============================================================${NC}"
    echo -e "${YELLOW}▶ YouTube:${NC}  https://m.youtube.com/@pelusadarkcheats"
    echo -e "${YELLOW}▶ GitHub:${NC}   https://github.com/devperry/"
    echo -e "${YELLOW}▶ Discord:${NC}  michael.json | https://discord.gg/R8PrhFkkKw"
    echo -e "${MAGENTA}============================================================${NC}"
    echo ""
}

# Step 1: Update & Upgrade
show_banner
echo -e "${CYAN}[1/4]${NC} Updating repositories and base packages..."
# We use 'yes |' to prevent dpkg config prompts from freezing the script
yes | pkg update -y && yes | pkg upgrade -y
sleep 2 # Short pause so you can see the end of the output before clearing

# Step 2: Install proot-distro
show_banner
echo -e "${CYAN}[2/4]${NC} Installing proot-distro..."
pkg install -y proot-distro
sleep 2

# Step 3: Install Alpine
show_banner
echo -e "${CYAN}[3/4]${NC} Downloading and installing Alpine Linux..."
proot-distro install alpine
sleep 2

# Step 4: Setup Alpine (Java & Git)
show_banner
echo -e "${CYAN}[4/4]${NC} Configuring Alpine environment (Installing Java 8 & Git)..."
proot-distro login alpine -- sh -c "apk update && apk add openjdk8 git"
sleep 2

# Final Success Message
show_banner
echo -e "${GREEN}============================================================${NC}"
echo -e "${GREEN}[✔] Setup completed successfully!${NC}"
echo -e "${GREEN}============================================================${NC}"
echo ""
echo -e "To enter your new Alpine system, just run:"
echo -e "${YELLOW}proot-distro login alpine${NC}"
echo ""
