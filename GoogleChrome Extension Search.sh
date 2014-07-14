#!/bin/sh
#
############################################################################
#
# Extension Attribute Grabs the logged in user, checks to see if they have specific Google Chrome extension installed.
# Looking for TweetDeck
#
# Author Jennifer Unger
############################################################################


loggedInUser=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`


if [ -d /Users/$loggedInUser/Library/Application\ Support/Google/Chrome/Default/Extensions/hbdpomandigafcibbmofojjchbcdagbl ]
then
	echo "<result>found</result>"
else
	echo "<result>not found</result>"
fi
