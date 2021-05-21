#go to /etc/profile.d directory and write the file named with like as welcome.sh

#welcome.sh
#echo "Welcome $USER"

#now open terminal with root user with "sudo -i" command

#and show the welcome message now

echo "Welcome $USER" > /etc/profile.d/welcome.sh
