#Sysinfo.py - Get info about computer and OS
#Only works if you run this program on Linux since this program calls a bash script
#This code has only been tested on Ubuntu 20.04 LTS and may not work on any other distros of Linux

#Import all required libraries/modules
import subprocess as sp
import platform, os, sys, time

#Create timer to get execution time
start = time.time()

#Ask user if they have the Linux command line tool figlet installed
figlet_install = input("Do you have figlet installed on your linux terminal (Y/N)? ")

#If they already have it installed, don't do anything and move on to the next part in the code
if figlet_install.upper() == "Y":
    pass

#If user does not have figlet installed, in the background the program runs the Linux command for installing figlet
elif figlet_install.upper() == "N":
    print("Installing figlet...")
    os.system("sudo apt-get install figlet")

#If user doesn't enter y or n, throw an error exiting the program
elif figlet_install.upper() != "Y" and "N":
    sys.exit("Invalid input. Your input must either be Y or N (uppercase is not mandatory).")

#Run figlet and get the name of the user's computer
os.system("figlet %s" %(platform.node()))

#Execute bash script sysinfo.sh
sp.call("/mnt/e/bash/welcomewagon.sh")

#End timer for finding execution time of program
end = time.time()

#Display execution time  - Important: Sometimes the execution time might be a bit big but that would be because the user takes long to enter input
print("Program execution time: %s seconds" %(end - start))
