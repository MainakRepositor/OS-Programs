# 2.Write a script called whichdaemon.sh that checks if the httpd and init daemons are
# running on your system. If an httpd is running, the script should print a message like, &quot;This
# machine is running a web server.&quot; Use ps to check on processes.

##### chekc list #### 
# ps   
# grep 
# wc  
#####################

#!/bin/bash
service=init

if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 )); then
	echo "$service is running!"
else
	echo "service is not running!"
fi

service=httpd

if(( $(ps -ef | grep -v grep | grep $service | wc -l) > 0)); then 
	echo "$service is running."
else 
	echo "$service is not running."
fi
