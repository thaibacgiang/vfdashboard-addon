# Dockerfile chính xác cho bản self-hosted
FROM node:22-alpine

WORKDIR /app

# 1. Cài đặt dependencies hệ thống
RUN apk add --no-cache \
    git \
    python3 \
    make \
    g++ \
    openssl \
    ca-certificates

# 2. Clone bản SELF-HOSTED (chính thức, tối ưu Docker)
RUN git clone https://github.com/VinFast-Community/vinfast-dashboard-selfhosted.git . \
    && git checkout main

# 3. Cài đặt dependencies Node.js
RUN npm ci --only=production --omit=dev

# 4. Tạo thư mục data và cấp quyền
RUN mkdir -p /data && chown -R node:node /data /app

# 5. Chuyển sang user không root để bảo mật
USER node

# 6. Expose port
EXPOSE 3001

# 7. Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost:3001/health || exit 1

# 8. Command chạy ứng dụng
CMD ["node", "server.js"]
