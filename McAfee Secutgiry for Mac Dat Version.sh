#!/bin/sh
#
############################################################################
#
# Extension Attribute returns the Virus Definitions Version for McAfee Security for Mac Anti-Malware.  This attribute template applies to McAfee Security for Mac Anti-malware (v1.0).
#
# This script has been verified to work on McAfee Security for Mac Anti-malware (v1.0).
#
############################################################################



#Check to see if McAfee Security is installed
if [ -f "/Library/Preferences/com.mcafee.ssm.antimalware.plist" ]; then
result=`/usr/bin/defaults read /Library/Preferences/com.mcafee.ssm.antimalware Update_DATVersion`
echo "<result>$result</result>"
else
echo "<result>Not installed</result>"
fi
	