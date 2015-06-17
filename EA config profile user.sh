user=`ls -l /dev/console | cut -d " " -f 4`
uprofiles=`sudo -u $user profiles -L -v | awk -F: '/attribute: name/{print $NF}' | sort`
echo "<result> $uprofiles </result>"
