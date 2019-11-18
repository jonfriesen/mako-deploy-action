#!/bin/sh
set -e

mkdir /playpen
cd /playpen

echo "--> Configuring for deployment!"
curl https://mako.nyc3.digitaloceanspaces.com/cli/linux/mako -o mako -s
mv -f mako /usr/local/bin/mako
chmod +x /usr/local/bin/mako

mako set auth $MAKO_AUTH

echo "--> Starting Mako Deploy!"
cd $GITHUB_WORKSPACE
mako push --app=$APP_NAME --deployment=$APP_DEPLOYMENT
