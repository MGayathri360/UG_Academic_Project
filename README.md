# UG_Academic_Project

# FinalYear_project

<p align="center">
  <img src="https://www.raspberrypi.com/app/uploads/2022/02/COLOUR-Raspberry-Pi-Symbol-Registered.png" width="350" title="hover text">
</p>
 
A Simple but effective Script that is able to run rasperberry pi and With Port Forwarding can provide High Security
And Ad blocker under development.

## Installation

```bash
git clone https://github.com/Uvansankar2003/FinalYear_project.git
chmod +x script.sh 
Scan QR code
```

## Honey pot 

 In order to run the Honeypot 
 Give permission to the file and install Ruby and its package sinatra
 Type the commands in terminal
 
```bash
sudo apt-get update
sudo apt-get install ruby-full
chmod +x Honey_Pot.rb
gem install sinatra
```
IDS and IPS System is also intergrated.

## Pi Hole

To install the Ad-blocker for the networks
just follow the commands

```bash
git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole
cd "Pi-hole/automated install/"
sudo bash basic-install.sh
OR 
curl -sSL https://install.pi-hole.net | bash
```

## Futher Scope 

Can be deployed in local network to route traffic.
Can be deployed in Industrial Environment to protect devices at low cost.


## Logs

The Log files are stored in the Log.txt file to extract the logs you can use the script.
