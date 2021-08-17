#!/bin/sh
for id in `xinput --list | grep 'DeathAdder' | perl -ne 'while (m/id=(\d+)/g){print "$1\n";}'`; do
    echo "setting device ID $id"
    xinput set-prop $id "libinput Accel Speed" -0.60
done
