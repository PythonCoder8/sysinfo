#Sysinfo.py - Get info about computer and OS
#Only works if you run this program on Linux since this program calls a bash script
#This code has only been tested on Ubuntu 20.04 LTS and may not work on any other distros of Linux

#Import all required libraries/modules
import subprocess as sp
import platform
import os
import sys
import time

#Create timer to get execution time
start = time.time()

#If not already installed, install figlet
figlet_install = input("Do you have figlet installed on your linux terminal (Y/N)? ")

if figlet_install.upper() == "Y":
    pass

elif figlet_install.upper() == "N":
    print("Installing figlet...")
    os.system("sudo apt-get install figlet")
    
elif figlet_install.upper() != "Y" and "N":
    sys.exit("Invalid input. Your input must either be Y or N (uppercase is not mandatory).")

#Run figlet and get the name of the user's computer
os.system("figlet %s" %(platform.node()))

#Execute bash script sysinfo.sh
sp.call("sysinfo.sh")

#End timer for finding execution time of program
end = time.time()

#Display execution time  - Important: Sometimes the execution time might be a bit big but that would be because the user takes long to enter input
print("Program execution time: %s seconds" %(end - start))
