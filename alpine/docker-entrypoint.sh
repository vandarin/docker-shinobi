#!/bin/sh
set -e

cp /opt/shinobi/conf.sample.json /opt/shinobi/conf.json
cp /opt/shinobi/super.sample.json /opt/shinobi/super.json
chmod -R 777 /opt/dbdata
if [ ! -e "/opt/dbdata/shinobi.sqlite" ]; then
    echo "Creating shinobi.sqlite for SQLite3..."
    cp /opt/shinobi/sql/shinobi.sample.sqlite /opt/dbdata/shinobi.sqlite
fi

node /opt/shinobi/tools/modifyConfiguration.js databaseType=sqlite3 db='{"filename":"/opt/dbdata/shinobi.sqlite"}' cpuUsageMarker=CPU

ADMIN_PASSWORD_MD5=$(echo -n "${ADMIN_PASSWORD}" | md5sum | sed -e 's/  -$//')

#set config data from variables
# Set the admin password
#sed -i -e "s/21232f297a57a5a743894a0e4a801fc3/${ADMIN_PASSWORD_MD5}/" "/opt/shinobi/super.json"

# Execute Command
exec "$@"
