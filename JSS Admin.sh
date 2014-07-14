#!/bin/sh
#
############################################################################
#
#Extension Attribute searches for jssadmin hidden account
#
############################################################################

if [[ $(dscl . list /Users UniqueID | awk '$2 < 501 {print $1}' | grep -i "^jssadmin$") ]]; then
      echo "<result>Present</result>"
else
      echo "<result>Not Present</result>"
fi