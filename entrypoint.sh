#!/usr/bin/env bash

service redis-server start

/usr/bin/tail -f /dev/null  # keeps container running

# Ends up with SSH for development purposes. Comment the line if you don't want to keep it running afters tests
#/usr/sbin/sshd -D


