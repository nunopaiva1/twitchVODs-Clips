#!/bin/bash

echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=

echo Enter the CLIP link brotherman
read LINK

echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-= 

cd /var/www/owncloud/data/nuuunu/files/Stream/Clips ;

youtube-dl $LINK ;

cd /var/www/owncloud ;

sudo -u www-data php occ files:scan nuuunu
