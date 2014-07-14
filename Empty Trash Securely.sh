#!/bin/sh
#
############################################################################
#
#Extension Attribute verifies that the trash is set to empty securely.  The value to be verified will need to be specified when creating this extension attribute.  Example: "true" verifies that the "Secure Empty Trash" option is enabled.  This extension attribute requires this preference be set using Managed Preferences (MCX).
#
############################################################################


desiredValue="EditFromTemplate_Desired_Value_-_Example:_true"

appDomain="com.apple.finder"
keyName="EmptyTrashSecurely"
currentUser=`last -1 -t console | awk '{print $1}'`
result=""
tmpResult="`dscl . mcxread /Users/$currentUser \"$appDomain\" \"$keyName\" |grep Value:| sed 's/Value\: //g'`"
echo $tmpResult
if [ "$tmpResult" == "1" ]; then
result="true"
else
if [ "$tmpResult" == "0" ]; then
	result="false"
else
	if [ "$tmpResult" == "" ]; then
		result="Domain or Key Not Found"
	else
		result="$tmpResult"
	fi
fi
fi
if [ "$result" == "$desiredValue" ]; then
echo "<result>Pass ($result)</result>"
else
echo "<result>Fail ($result)</result>"
fi
	