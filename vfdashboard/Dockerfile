FROM node:18-alpine

WORKDIR /app

# Cách dự phòng: Clone repo GỐC thay vì selfhosted
RUN apk add --no-cache git
RUN git clone https://github.com/VF9-Club/VFDashboard.git .

# THÊM DÒNG NÀY: Gỡ adapter Cloudflare, cài adapter Node.js
RUN npm uninstall @astrojs/cloudflare && \
    npm install @astrojs/node && \
    sed -i 's/@astrojs\/cloudflare/@astrojs\/node/g' astro.config.mjs

# Build ứng dụng
RUN npm run build

EXPOSE 3001

# Chạy server production
CMD ["node", "./dist/server/entry.mjs"]
