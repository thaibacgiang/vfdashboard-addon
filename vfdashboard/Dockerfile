FROM node:22-alpine

WORKDIR /app
RUN apk add --no-cache git

RUN git clone https://github.com/VF9-Club/VFDashboard.git .

# Gỡ Cloudflare adapter (chính là thủ phạm)
RUN npm uninstall @astrojs/cloudflare

RUN npm install

EXPOSE 4321
CMD ["npm", "run", "dev", "--", "--host"]
