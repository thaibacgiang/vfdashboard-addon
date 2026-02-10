#!/bin/sh
set -e

echo "🚀 Starting VF9 Dashboard..."

# Biến môi trường từ cấu hình HA add-on
# Bạn có thể sử dụng chúng nếu cần điều chỉnh ứng dụng
echo "VIN: ${VIN:-Not Set}"
echo "Refresh Interval: ${REFRESH_INTERVAL:-60} seconds"

# Khởi chạy ứng dụng VFDashboard
# Lưu ý: Sử dụng '--host 0.0.0.0' để lắng nghe từ mọi kết nối mạng
exec npm run dev -- --host 0.0.0.0 --port 4321
