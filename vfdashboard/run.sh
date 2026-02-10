#!/bin/sh
set -e

echo "🚀 Starting Self-hosted VinFast Dashboard..."

# Tạo file config từ biến môi trường HA
if [ -n "$VIN" ] && [ -n "$EMAIL" ] && [ -n "$PASSWORD" ]; then
    cat > /app/config/user-config.json << EOF
{
  "vin": "${VIN}",
  "email": "${EMAIL}",
  "password": "${PASSWORD}",
  "units": "${UNITS:-metric}",
  "language": "${LANGUAGE:-en}",
  "dataDir": "/data",
  "port": 3001,
  "host": "0.0.0.0"
}
EOF
    echo "✓ Configuration file created"
else
    echo "⚠ Running with default configuration"
fi

# Chạy ứng dụng
exec node server.js
