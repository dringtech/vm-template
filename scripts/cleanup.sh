#!/bin/bash
#clean yum cache
/usr/bin/yum clean all
#remove udev hardware rules
/bin/rm -f /etc/udev/rules.d/70*
#remove nic mac addr and uuid from ifcfg scripts
/bin/sed -i '/^\(HWADDR\|UUID\)=/d' /etc/sysconfig/network-scripts/ifcfg-e*
#remove host keys (important step security wise.  similar to system GUID in Windows)
/bin/rm /etc/ssh/ssh_host_*
#engage logrotate to shrink logspace used
/usr/sbin/logrotate -f /etc/logrotate.conf
# Load the keys
for file in /etc/pki/rpm-gpg/RPM-GPG-KEY-*
do
	rpm --import $file
done
exit 0
