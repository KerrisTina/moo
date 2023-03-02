#!/bin/sh
if [ ! -f UUID ]; then
  UUID="20e92881-5fb4-4b05-bc77-57929476dc69"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

