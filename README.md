# sysinfo
Two pieces of code, one written in Bash, one written in Python for getting information about the computer and OS. Since it is written in Bash it must only be executed in the Linux terminal. The program that is meant to be executed is the Python file, sysinfo.py. Python 3 and Figlet need to be installed on your Linux terminal to execute the Python file
without errors. To install the latest version of Python go to https://www.python.org/downloads/. The program takes care of installing figlet. The program excepts input so it knows if you have figlet installed. If you do, it doesn't install anything. If you don't, it runs the Linux command in the background to install figlet. This program has only been tested on Ubuntu, and may not work on any other distrobutions of Linux. If you want to get similar info on Microsoft Windows you can run the following command on the command prompt or on powershell:

`systeminfo`

If that doesn't work properly you can run this command on the powershell:

`Get-ComputerInfo`

Please remember that the "Get-ComputerInfo" command only works on powershell and will not be recognized by the command prompt.

Another way of getting system info on windows is using the code in my win-sysinfo repo.

**CODE DEVELOPED BY: PythonCoder8 (me) and Cybergavin both from Oakville, Canada**

PythonCoder8: [Link to PythonCoder8's Github profile](https://github.com/PythonCoder8)

Cybergavin: [Link to Cybergavin's Github profile](https://github.com/cybergavin)

![Picture](https://raw.githubusercontent.com/PythonCoder8/System-info/main/bash-python.png)
