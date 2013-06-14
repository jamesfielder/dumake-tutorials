Using scp for moving files
===============================================

scp is a unix utility which allows you to move files onto and off a device running a ssh server. This is the software we will use to move files to and from the RPi.

On windows
----------

+ Open winscp from the start menu
+ Put the ip we have given you in the host name section
+ Username: pi
+ Password: Raspberry

This should look like this

![Scp on windows](https://raw.github.com/jamesfielder/dumake-tutorials/master/img/winscp1.png)

You should now be given a screen with local files in one column and files on the Pi in the other.

![columns](https://raw.github.com/jamesfielder/dumake-tutorials/master/img/winscp2.png)

From here you can simply drag files between the two columns to move them between the computers.

On Mac/Linux
------------

The best way to use scp on mac or linux is to use the command line version of the tool. Open a terminal and run

    scp /path/to/file/hi.py pi@ip:~
  
to push files to the RPi and

    scp pi@ip:~/hi.py ~
  
to pull files from the RPi to your home directory.
