#!/bin/sh
#
############################################################################
#
# Extension Attribute displays the last user to log in.  This attribute applies to both Mac and Windows.
#
############################################################################

lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`

if [ $lastUser == "" ]; then
	echo "<result>No logins</result>"
else
	echo "<result>$lastUser</result>"
fi