#!/bin/bash

echo "🚀 Starting X-UI Panel..."

# تنظیم پورت از روی متغیر محیطی (اگر Railway تنظیم کرده باشد)
if [ -n "$PORT" ]; then
    sed -i "s/\"webPort\": [0-9]*/\"webPort\": $PORT/" /etc/x-ui/config.json 2>/dev/null || true
fi

# اجرای X-UI
cd /usr/local/x-ui
exec ./x-ui
