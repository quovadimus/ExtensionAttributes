#!/bin/sh
#
############################################################################
#
# Extension Attribute verifies that the client has enrolled to the JSS.  Results returned are "Enabled" or "Not Enabled" based on whether the client has an MDM profile supplied by the JSS. 
#
############################################################################


mdmEnrollmentProfileID="00000000-0000-0000-A000-4A414D460003"
enrolled=`/usr/bin/profiles -C | /usr/bin/grep "$mdmEnrollmentProfileID"`

if [ "$enrolled" != "" ]; then
	echo "<result>Enrolled</result>"
else
	echo "<result>Not Enrolled</result>"
fi
