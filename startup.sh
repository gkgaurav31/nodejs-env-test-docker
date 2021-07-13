#!/bin/sh

echo "Start sshd"
/usr/sbin/sshd

echo "Start node"
#node app.js
cd /app
npm start