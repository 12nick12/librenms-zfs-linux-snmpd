# librenms-zfs-linux-snmpd
librenms-zfs-linux-snmpd

This is a known issue
https://github.com/librenms/librenms-agent/issues/248

Follow this guide below.
https://docs.librenms.org/Extensions/Applications/#zfs

Then do this 
```wget 'https://raw.githubusercontent.com/12nick12/librenms-zfs-linux-snmpd/master/zfs_get.sh' -O '/etc/snmp/zfs_get.sh'```

change ['/sbin/zpool', 'list', '-pH'] to ['/etc/snmp/zfs_get.sh'] in /etc/snmp/zfs-linux

Now close out /etc/snmp/zfs_get.sh and LibreNMS should now show what you need after 10-15mins.

There is no warranty and I take no responsibility if anything happens. I'm not 100% sure that this prints everything 100% as it should, but it seems to make my graphs display data. 
