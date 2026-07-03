#!/data/data/com.termux/files/usr/bin/bash



RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
MAGENTA='\033[1;35m'
NC='\033[0m'

clear

pkg install -y figlet toilet ruby >/dev/null 2>&1
gem install lolcat --no-document >/dev/null 2>&1

clear

# Banner
figlet -f slant "Pelusa Dark" | lolcat

echo -e "${CYAN}============================================================${NC}"
echo -e "${WHITE}           Alpine Linux + OpenJDK 8 Installer${NC}"
echo -e "${WHITE}                Developed by Pelusa Dark${NC}"
echo -e "${CYAN}============================================================${NC}"
echo

echo -e "${YELLOW} YouTube Channel${NC}"
echo -e "${WHITE}https://m.youtube.com/@pelusadarkcheats${NC}"
echo

echo -e "${YELLOW} GitHub${NC}"
echo -e "${WHITE}https://github.com/devperry/${NC}"
echo

echo -e "${YELLOW} Discord${NC}"
echo -e "${WHITE}Username : michael.json${NC}"
echo -e "${WHITE}Server   : https://discord.gg/R8PrhFkkKw${NC}"

echo
echo -e "${CYAN}============================================================${NC}"
echo -e "${GREEN}Starting installation in 3 seconds...${NC}"
echo -e "${CYAN}============================================================${NC}"

sleep 3

step() {
    echo
    echo -e "${BLUE}============================================================${NC}"
    echo -e "${GREEN}$1${NC}"
    echo -e "${BLUE}============================================================${NC}"
}

# Step 1
step "[1/5] Updating Termux packages..."
pkg update -y && pkg upgrade -y

# Step 2
step "[2/5] Installing proot-distro..."
pkg install -y proot-distro

# Step 3
step "[3/5] Installing Alpine Linux..."
proot-distro install alpine

# Step 4
step "[4/5] Installing packages inside Alpine..."
proot-distro login alpine -- sh -c "
apk update &&
apk add openjdk8 git
"

# Step 5
step "[5/5] Cleaning up..."
sleep 1

clear

figlet -f slant "Completed!" | lolcat

echo -e "${GREEN}"
echo "============================================================"
echo "             INSTALLATION COMPLETED SUCCESSFULLY"
echo "============================================================"
echo -e "${NC}"

echo -e "${WHITE}Installed components:${NC}"
echo -e "  ${GREEN}✔${NC} Alpine Linux"
echo -e "  ${GREEN}✔${NC} OpenJDK 8"
echo -e "  ${GREEN}✔${NC} Git"
echo -e "  ${GREEN}✔${NC} proot-distro"

echo
echo -e "${CYAN}To start Alpine Linux, run:${NC}"
echo -e "${WHITE}proot-distro login alpine${NC}"

echo
echo -e "${MAGENTA}Thank you for using Pelusa Dark Installer!${NC}"
echo -e "${MAGENTA}Follow for more Termux projects and tutorials.${NC}"

echo
echo -e "${YELLOW}YouTube :${NC} https://m.youtube.com/@pelusadarkcheats"
echo -e "${YELLOW}GitHub  :${NC} https://github.com/devperry/"
echo -e "${YELLOW}Discord :${NC} michael.json"
echo -e "${YELLOW}Server  :${NC} https://discord.gg/R8PrhFkkKw"
```
