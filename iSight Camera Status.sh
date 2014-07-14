#!/bin/sh
#
############################################################################
#
#Extension Attribute displays the status of the iSight Camera.  The value to be verified will need to be specified when creating this extension attribute.  Example: "disabled" verifies that the iSight Camera is disabled.
#
#
############################################################################

desiredValue="disabled"

if [ -d "/System/Library/Extensions/Apple_iSight.kext" ] && [ -d "/System/Library/QuickTime/QuickTimeUSBVDCDigitizer.component" ] && [ -d "/System/Library/PrivateFrameworks/CoreMediaIOServicesPrivate.framework/Versions/A/Resources/VDC.plugin" ]; then
status="disabled"
else
status="enabled"
fi		

if [ "$desiredValue" ==  "$status" ]; then
echo "<result> (iSight Status is: $status)</result>"
else
echo "<result>(iSight Status is: $status)</result>"
fi
	