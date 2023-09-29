#!/bin/bash

# Create DB_HOST env variable
export DB_HOST=mongodb://172.31.20.86:27017/posts


# cd into app folder
cd app2/app


# install npm
npm install

# seed database
echo "Clearing and seeding database..."
node seeds/seed.js
echo " --> Done!"

# Run Sparta app in the background
pm2 start app.js
