#!/bin/bash
# Developed by: Cybergavin (Gavin)
# Edited by   : PythonCoder8 (Ryan) 
# Date        : 23rd October 2018
# Description : Welcome Wagon - Bash script to display information about the system
#               Tested on RHEL 7, CentOS 8, Raspbian 10, and Ubuntu 20.04 LTS
###########################################################################################################
# Color variables
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
UNDERLINE=$(tput smul)
# Host Details
my_ips=$(ip -4 address | grep "inet " | grep -v "127.0.0.1" | awk '{printf $2" "}')
my_os=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | sed 's/\"//g')
my_kernel=$(uname -r)
my_uptime=$(uptime|sed 's/^ *//g')
# CPU Details
my_cpu_model=`lscpu | grep "Model name" | awk -F: '{print $2}' | sed 's/^ *//g'`
my_cpu_sockets=`lscpu | grep "Socket(s)" | awk -F: '{print $2}' | sed 's/^ *//g'`
my_cpu_cores=`lscpu | grep "Core(s) per socket" | awk -F: '{print $2}' | sed 's/^ *//g'`
my_cpu_lps=`lscpu | grep "^CPU(s)" | awk -F: '{print $2}' | sed 's/^ *//g'`
# Memory
my_mem_total=$(grep -m 1 -w 'MemTotal' /proc/meminfo | awk -F: '{print $2 / 1024 / 1024 }' | sed 's/^ *//g')
my_mem_free=$(grep -m 1 -w 'MemFree' /proc/meminfo | awk -F: '{print $2 / 1024 / 1024 }' | sed 's/^ *//g')
my_swap_total=$(grep -m 1 -w 'SwapTotal' /proc/meminfo | awk -F: '{print $2 / 1024 / 1024 }' | sed 's/^ *//g')
my_swap_free=$(grep -m 1 -w 'SwapFree' /proc/meminfo | awk -F: '{print $2 / 1024 / 1024 }' | sed 's/^ *//g')
echo -e ""
echo -e "${WHITE}Welcome ${YELLOW}${USER} ${NORMAL}to ${CYAN}${UNDERLINE}$HOSTNAME${NORMAL}"
echo -e ""

echo -e "${YELLOW}Date: `date`${NORMAL}"
echo -e ""
cat <<EOF
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "IPv4 Address(es)" "$my_ips")
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "Hostname" "$HOSTNAME")
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "Operating System (OS)" "$my_os")
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "OS Kernel" "$my_kernel")
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "Uptime" "$my_uptime")
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "CPU Model" "$my_cpu_model")
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "CPU Sockets" "$my_cpu_sockets")
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "CPU Cores/Socket" "$my_cpu_cores")
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "CPU Logical Processors" "$my_cpu_lps")
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "Total Memory" "$my_mem_total GiB")
$(printf "${WHITE}%-20s${NORMAL}: ${CYAN}%-20s${NORMAL}" "Free Memory" "$my_mem_free GiB")
EOF
# Reset Terminal Colour Back to Normal
echo -e "${NORMAL}"
