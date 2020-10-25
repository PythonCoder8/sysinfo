#Sysinfo.py - Get info about computer and OS
#This code has only been tested on Ubuntu 20.04 LTS and may not work on any other distros of Linux.

#Import all required libraries/modules
import subprocess as sp
import platform
import os

#Ask user if they have the Linux command line tool figlet installed
figlet_install = input("Do you have figlet installed on your linux terminal (Y/N)? ")

#If they already have it installed, move on to the next part in the code
if figlet_install.upper() == "Y":
    pass

#If user does not have figlet installed, in the background the program runs the Linux command for installing figlet.
if figlet_install.upper() == "N":
    os.system("sudo apt-get install figlet")
    
#Run figlet and get the name of the user's computer
os.system("figlet %s" %(platform.node()))

#Execute bash script sysinfo.sh
sp.call("sysinfo.sh")
