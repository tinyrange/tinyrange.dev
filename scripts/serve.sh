#!/usr/bin/env bash

set -ex

tinyrange login \
  -f mkdocs-material.simg \
  apptainer tzdata \
  --mount-rw .. \
  -E "ln -s /usr/share/zoneinfo/Australia/Brisbane /etc/localtime" \
  -E "cd /share/tinyrange.dev;apptainer exec /root/mkdocs-material.simg mkdocs serve -a 10.42.0.2:8080" \
  --forward 8080