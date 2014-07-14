#!/bin/sh
#
############################################################################
#
#Extension Attribute checks configuration Profiles System Level
#
############################################################################


profiles=`profiles -C -v | awk -F: '/attribute: name/{print $NF}' | sort`
echo "<result> $profiles </result>"