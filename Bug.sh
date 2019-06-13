#!/bin/bash
pkg update
pkg upgrade
pkg install nmap -y
pkg install wget -y

celar
echo "Masukan Bug Target";
sleep 2
read -p "Name bug: " bug;
sleep 2
echo "Sedang Mencari Bug $bug";


nmap -p 80 --script dns-brute.nse $bug
wget -S $bug

echo "Selesai ";
