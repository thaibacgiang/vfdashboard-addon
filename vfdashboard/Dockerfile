# Dockerfile ĐƠN GIẢN - CHẮC CHẮN CHẠY ĐƯỢC
FROM node:18-alpine

WORKDIR /app

# 1. Cài đặt git (bắt buộc)
RUN apk add --no-cache git

# 2. Clone repo GỐC từ VF9-Club
RUN git clone https://github.com/VF9-Club/VFDashboard.git .

# 3. SỬA ADAPTER: Cloudflare → Node.js (QUAN TRỌNG)
# Cách A: Sửa trực tiếp config file
RUN sed -i 's/@astrojs\/cloudflare/@astrojs\/node/g' astro.config.mjs 2>/dev/null || true

# Cách B: Cài adapter Node.js
RUN npm install @astrojs/node

# 4. Build ứng dụng
RUN npm run build

# 5. Tạo user không root
RUN chown -R node:node /app
USER node

# 6. Expose port
EXPOSE 3000

# 7. Chạy server đã build
CMD ["node", "./dist/server/entry.mjs"]
