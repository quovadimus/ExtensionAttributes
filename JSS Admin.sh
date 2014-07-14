#!/bin/sh
#
############################################################################
#
#Extension Attribute searches for hidden user account
#
#by Jennifer Unger
############################################################################

if [[ $(dscl . list /Users UniqueID | awk '$2 < 501 {print $1}' | grep -i "^nameofhiddenaccount$") ]]; then
      echo "<result>Present</result>"
else
      echo "<result>Not Present</result>"
fi