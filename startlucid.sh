#!/bin/sh

instanceid=$1

nohup lucid --instance $instanceid daemon </dev/null > /var/log/lucid.$1.log 2>&1 &

echo "Started Lucid instance $1"

ps aux | grep lucid

sleep 5

