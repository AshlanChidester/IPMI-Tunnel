#!/bin/bash
set -x

shell='root@bastion'
ifalias=$1
ipmihost=$2
ports="80 443 623 5900 5901 5120 5123 8889"

# Initialize fwportspec <> empty string
fwportspec=""

for p in $ports; do
    fwportspec="${fwportspec} -L $ifalias:$p:$ipmihost:$p "
done

ifconfig lo0 alias $ifalias
#ssh -v -C $fwportspec $shell  # Uncomment to verbose debugging
ssh -N $fwportspec -oUserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $shell
sleep 1
ifconfig lo0 -alias $ifalias
