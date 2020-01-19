#!/bin/bash

# cd /home/ec2-user
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# . ~/.nvm/nvm.sh
# nvm install node
# node -e "console.log('Running Node.js ' + process.version)"
# sudo yum install sqlite -y
# sudo yum install sqlite-devel -y
# npm install pm2 -g
# cd /home/ec2-user/timeoff-management/
# pm2 start app.js --name "timeoff-management"
# pm2 startup
# # sudo env PATH=$PATH:/home/ec2-user/.nvm/versions/node/v13.6.0/bin /home/ec2-user/.nvm/versions/node/v13.6.0/lib/node_modules/pm2/bin/pm2 startup systemd -u ec2-user --hp /home/ec2-user
# # sudo service pm2-ec2-user start
# # sudo service pm2-ec2-user status

sudo rm -rf /home/ec2-user/*
cd /home/ec2-user
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
node -e "console.log('Running Node.js ' + process.version)"
sudo yum install sqlite -y
sudo yum install sqlite-devel -y
npm install pm2 -g
git clone https://github.com/lungosta/timeoff-management-application.git timeoff-management
cd timeoff-management
npm install
cd /home/ec2-user/timeoff-management/
pm2 start app.js --name "timeoff-management"
pm2 startup
sudo env PATH=$PATH:/home/ec2-user/.nvm/versions/node/v13.6.0/bin /home/ec2-user/.nvm/versions/node/v13.6.0/lib/node_modules/pm2/bin/pm2 startup systemd -u ec2-user --hp /home/ec2-user
sudo service pm2-ec2-user start