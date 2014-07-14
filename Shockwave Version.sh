#!/bin/sh
#
############################################################################
#
# Extension Attribute checks to display Adobe Shockwave Version number.
# 
#
############################################################################

ShockwavePluginVersion=`/usr/bin/defaults read /Library/Application\ Support/Adobe/Shockwave\ 12/DirectorShockwave.bundle/Contents/Info CFBundleVersion`
echo "<result> $ShockwavePluginVersion </result>"

exit 0