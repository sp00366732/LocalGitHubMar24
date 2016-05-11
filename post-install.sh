#!/bin/bash
cd $SANJAY_APP_DIR

# move the default conf directory
mv conf conf.defaults

# move the default webapps directory
mv webapps webapps.defaults

# Create an empty webapps directory
mkdir webapps

# symlink mount points at root to install dir
ln -s $SANJAY_APP_DIR/webapps /app
ln -s $SANJAY_APP_DIR/conf $SANJAY_APP_VOL_PREFIX/conf
ln -s $SANJAY_APP_DIR/logs $SANJAY_APP_VOL_PREFIX/logs
