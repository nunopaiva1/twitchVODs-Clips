#!/bin/bash

echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=

echo Enter the VOD link brotherman
read LINK

echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-= 

cd /var/www/owncloud/data/nuuunu/files/Stream/VODs ;

youtube-dl $LINK ;

cd /var/www/owncloud ;

sudo -u www-data php occ files:scan nuuunu
