#!/bin/sh
#
############################################################################
#
# Extension Attribute verifies the "Wake on LAN" energy saver setting.  The value to be verified will need to be specified when creating this extension attribute.   Example: "false" verifies that the "Wake on LAN" setting is disabled
#
############################################################################

desiredValue="true"

result=""
tmpResult="`/usr/bin/pmset -g | grep -w womp | awk '{print $2}'`"
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
	