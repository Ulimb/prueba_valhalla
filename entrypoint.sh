#!/usr/bin/env sh
# entrypoint.sh — genera nginx.conf final desde la plantilla
set -e

# Sustituye la variable en la plantilla
envsubst '${VALHALLA_API_KEY}' \
  < /etc/nginx/nginx.conf.template \
  > /etc/nginx/nginx.conf

# Lanza nginx
exec nginx -g 'daemon off;'
