#!/usr/bin/env bash
set -e

# if [ "$1" = 'apache2-foreground' ]; then
sed -i -e "s|\(urlCellPM:\).*|\1 \"$I2B2PM_URL\",|g" \
        -e "s|\(name:\).*|\1 \"$I2B2_DOMAIN_HUMAN\",|g" \
        -e "s|\(domain:\).*|\1 \"$I2B2_DOMAIN\",|g" \
        /var/www/html/i2b2_config_data.js

#     exec apache2-foreground "$@"
# fi

exec "$@"
