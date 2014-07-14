#!/bin/sh
#
############################################################################
#
# Extension Attribute Print Current Logged in User
#
############################################################################

user=`ls -la /dev/console | cut -d " " -f 4`
echo "<result>$user</result>"