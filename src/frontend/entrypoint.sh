#!/bin/sh
sed -i "s|API_ENDPOINT_PLACEHOLDER|${API_ENDPOINT}|g" /usr/share/nginx/html/app.js
exec "$@"