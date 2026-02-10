# Dockerfile
FROM node:22-alpine

WORKDIR /app

# 1. Cài đặt git và các công cụ cần thiết
RUN apk add --no-cache git python3 make g++

# 2. Clone mã nguồn VFDashboard từ repo chính thức
RUN git clone https://github.com/VF9-Club/VFDashboard.git . && \
    npm install

# 3. Sao chép script khởi động
COPY run.sh /run.sh
RUN chmod +x /run.sh

# 4. Cổng mà ứng dụng lắng nghe (phải khớp với config.yaml)
EXPOSE 4321

# 5. Chạy ứng dụng
CMD ["/run.sh"]
