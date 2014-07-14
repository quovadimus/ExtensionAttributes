#!/bin/sh
#
############################################################################
#
# Extension Attribute Looks for the recovery HD required for FileVault
#
############################################################################


recoveryHDPresent=`/usr/sbin/diskutil list | grep "Recovery HD" | grep disk0`

if [ "$recoveryHDPresent" != "" ]; then
	echo "<result>Present</result>"
else
	echo "<result>Not Present</result>"
fi
