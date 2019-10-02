#!/bin/bash
# LibreNMS ZFS For ZFSonLinux

for z in $(zpool list -H | cut -f1-1); do
        printf "%s\t" ${z}
        for f in $(zpool get -pH name,size,alloc,free,expandsz,frag,cap,dedup,health,altroot "${z}" | sed -n '1!p' | cut -f3-3); do
                printf "%s\t" ${f}
        done
        printf "\n"
done
