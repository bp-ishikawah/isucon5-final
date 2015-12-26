#!/bin/bash
set -ux

cd $(dirname $0)

for daemon in "supervisor" "h2o"; do
    sudo -H rm -rf /etc/$daemon
    sudo -H cp -R $daemon /etc/$daemon
done

sudo -H supervisorctl reload