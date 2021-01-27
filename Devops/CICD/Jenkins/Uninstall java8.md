# OpenJDK

First of all, take a look at installed OpenJDK packages:

`sudo dpkg --list | grep -i jdk`

Depending on installed packages you should edit a list to remove:

`sudo apt-get remove --purge icedtea-* openjdk-*`

Check again for installed packages, the list should be empty:

`sudo dpkg --list | grep -i jdk<br>`

Java should be completely uninstalled.

**or**

sudo apt-get autoremove default-jdk openjdk-`hit tab`