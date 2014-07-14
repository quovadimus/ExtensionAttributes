
#!/bin/sh
#
############################################################################
#
#Extension Attribute checks Adobe Air Version
#
############################################################################

if [ -d /Library/Frameworks/Adobe\ AIR.framework ];then
    result=`/usr/bin/defaults read /Library/Frameworks/Adobe\ AIR.framework/Versions/1.0/Resources/Info CFBundleVersion`
    if [ $result == "" ];then
        echo "<result>No version</result>"
    else
        echo "<result>$result</result>"
    fi
else
    echo "<result>Not installed</result>"
fi

exit 0