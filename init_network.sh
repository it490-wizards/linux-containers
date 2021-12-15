#!/bin/sh

PREFIX=it490

if [ -f .env ]; then
    . ./.env
fi

for c in frontend database dmz; do
    container="$PREFIX-$c"

    lxc exec $container -- sh -c "curl -s https://install.zerotier.com/ | bash"
    lxc exec $container -- zerotier-cli join $ZEROTIER_ID
done
