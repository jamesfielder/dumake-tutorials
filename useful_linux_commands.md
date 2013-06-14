#useful_linux_commands.md

###Edit a file:
nano /path/to/filename
(then edit as normal, and ctrl+x to exit)

###Append to a file (if you dont want to edit it):
echo "this is a new line" >> /path/to/file

###See what's running:

	ps ax

or

	top

###Moving around the filesystem:

	cd /path/to/directory (change directory)
	ls -l (list files in directory)

###See the last few lines of a file:

	tail /path/to/file

(you can use tail -n 5 to see the last 5 lines etc..)

###Watch changes to a file (usually a logfile):

	tail -f /var/log/syslog

###Output a file to screen:

	cat /path/to/file

###Reboot:

	shutdown -r now

###Shutdown:
	
	shutdown -h now

###Start/stop a service:
	
	sudo /etc/init.d/servicename restart
