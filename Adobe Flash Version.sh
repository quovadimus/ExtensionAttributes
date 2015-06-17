#!/bin/sh
#
############################################################################
#
# Extension Attribute checks to display Adobe Flash Player Version number.
# 
#
############################################################################

FlashPluginVersion=`/usr/bin/defaults read /Library/Internet\ Plug-Ins/Flash\ Player.plugin/Contents/Info CFBundleVersion`
echo "<result> $FlashPluginVersion </result>"

exit 0
