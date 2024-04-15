# installation de GNS3
echo " installation du dépot GNS3"
sudo add-apt-repository ppa:gns3/ppa -y

echo " Mise à jour de vore OS... please wait..."
sudo apt update -y                                

echo " Installation de GNS3..."
sudo apt install gns3-gui gns3-server -y

echo " Ajout de dépendances fonctionnelles.."
sudo dpkg --add-architecture i386 -y
sudo apt update -y
clear
sudo apt install gns3-iou -y
sudo apt-get -y --no-install-recommends install curl apt-transport-https ca-certificates software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
clear
sudo apt install docker docker-compose -y
sudo usermod -aG libvirt $USER
sudo usermod -aG kvm $USER
sudo usermod -aG wireshark $USER
sudo usermod -aG docker $USER
sudo usermod -aG ubridge $USER
echo " Installation de GNS3 terminé !"
