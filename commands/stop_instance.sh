#!/bin/bash
cd /home/ec2-user/timeoff-management/
pm2 stop app.js --name "timeoff-management"
rm -rf /home/ec2-user/timeoff-management/lib/route/*