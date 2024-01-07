#!/bin/bash

# Welcome script with highlighted IP, Firewall, and Memory

echo -e "欢  迎: \e[1;33m$(whoami)\e[0m"
echo -e "Online: $(who | wc -l)"
echo -e "时  间: $(date "+%Y-%m-%d %H:%M")"
echo -e "IP    : \e[1;32m$(ifconfig | grep 'inet ' | cut -d ' ' -f 10 | grep -v '127.0.0.1')\e[0m"
echo -e "防火墙: \e[1;32m$(systemctl status firewalld | grep 'Active:' | awk '{print $3}')\e[0m"
echo -e "Memory: \e[1;31m$(free -h | awk '/Mem/ {print $3}')/$(free -h | awk '/Mem/ {print $2}') \e[0m\e[1;31m$(free | awk '/Mem/ {printf "%.0f%%", $3/$2 * 100}')\e[0m"

