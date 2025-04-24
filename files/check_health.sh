#!/bin/bash

# /etc/keepalived/check_health.sh
set -e

# Check HAProxy process
if ! systemctl is-active --quiet haproxy; then
  logger "HAProxy not running"
  exit 1
fi

# Check K3s process
if ! systemctl is-active --quiet k3s; then
  logger "K3s not running"
  exit 1
fi

exit 0