#!/bin/sh
#
############################################################################
#
# Extension Attribute to grab the version of Silverlight and place the version in the Position tag in
# the location information of a machine.
#
# Author Steve Wood (swood@integer.com)
# Date: 04 March 2009 (revised 16 June 2010)
############################################################################



# grab the version from the plug-in 
version=`defaults read /Library/Internet\ Plug-Ins/Silverlight.plugin/Contents/Info CFBundleShortVersionString`

echo "<result>$version</result>"