# 4.Create a script that will take a (recursive) copy of files in /etc so that a beginning system
# administrator can edit files without fear.

### Check list #### 
# chmod
# cp
##################


sudo chmod -R a+rwx *.txt
sudo cp -rv *.txt /etc/
