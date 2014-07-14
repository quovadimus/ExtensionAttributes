#!/bin/sh
#
############################################################################
#
#Extension Attribute to find management account for JSS
#
# Note: JSS username and password must be saved in this script for it to work.  Recommend setting up JSS user with only the permissions needed to run script and no others.
############################################################################



apiURL="https://svr-mac-alpha.nfcu.net:8443/JSSResource/computers/macaddress/"
apiUser="macsupportteam"
apiPass="macsupportteam"
MacAdd=$(networksetup -getmacaddress en0 | awk '{ print $3 }' | sed 's/:/./g')

ManAccount=$(curl -s -u $apiUser:$apiPass $apiURL$MacAdd | xpath /computer/general/remote_management/management_username[1] | sed 's/<management_username>//;s/<\/management_username>//')

echo "<result>$ManAccount</result>"