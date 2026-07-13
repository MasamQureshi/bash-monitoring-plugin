#!/bin/bash

echo "########################################################"

date
ls /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then
    echo "HTTPD is running"
else
    echo "HTTPD is NOT running"
    echo "starting the process"

    systemctl start httpd

    if [ $? -eq 0 ]
    then
        echo "process started successfully"
    else
        echo "process starting failed. contact the admin"
    fi
fi

echo "########################################################"
echo
