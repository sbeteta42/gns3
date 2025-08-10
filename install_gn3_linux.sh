# Installation automatisée de GNS3 pour Debian/Ubuntu/Mint
# par sbeteta@beteta.org

# Installation de GNS3
echo "[1/7] Installation du dépot GNS3"
sleep 5
sudo add-apt-repository ppa:gns3/ppa -y

# Maj de l'OS
echo "[2/7] Mise à jour de votre OS... please wait..."
sleep 5
sudo apt update -y                                
clear

# Installation de GNS3
echo "[3/7] Installation de GNS3..."
sleep 5
sudo apt install gns3-gui gns3-server -y

echo "[4/7] Ajout de dépendances fonctionnelles.."
sleep 5
sudo dpkg --add-architecture i386 -y
sudo apt update -y
clear

# Ajout du support IOU
echo "[5/7] Ajout du support IOU 
sleep 5
sudo apt install gns3-iou -y

# Installation de DOCKER
echo "[6/7] Installation de DOCKER
sleep 5
sudo apt-get -y --no-install-recommends install curl apt-transport-https ca-certificates software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
clear
# ajout de groupes ci-dessous pour l'user en cours...
sudo usermod -aG ubridge,libvirt,kvm,wireshark,docker $(whoami)
echo "[7/7] Installation de GNS3 terminé !"
