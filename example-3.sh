# chekc list
# ifconfig # to see ip address.
# ssh
# scp
# ssh host-name@host-ip-address
# scp -r source-directory destination-pc-name@destination-pc-ip:/home/host-name/some-directory


sudo ssh plab-16@192.168.1.116 # login to remote pc
# copy file to remote pc
sudo scp -r /home/plab-16/Desktop/ plab-17@192.168.1.117:/home/plab-17/Desktop/
