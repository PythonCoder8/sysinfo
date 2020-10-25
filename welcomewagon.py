import subprocess as sp
import platform
import os
figlet_install = input("Do you have figlet installed on your linux terminal (Y/N)? ")
if figlet_install.upper() == "Y":
    pass
if figlet_install.upper() == "N":
    os.system("sudo apt-get install figlet")
os.system("figlet %s" %(platform.node()))
sp.call("welcomewagon.sh")