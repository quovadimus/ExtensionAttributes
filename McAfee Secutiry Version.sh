#!/bin/sh
#
############################################################################
#
# Extension Attribute Checks for the version of Mcafee client installed.
#
############################################################################



Version=`cat /etc/cma.d/EPOAGENT3700MACX/config.xml | egrep "<Version>.*</Version>" |sed -e "s/<Version>\(.*\)<\/Version>/\1/"|tr "|" " "`

echo '<result>'$Version'</result>'