FROM node:22-alpine AS build

WORKDIR /app
RUN apk add --no-cache git

RUN git clone https://github.com/VF9-Club/VFDashboard.git .

# Build static (Cloudflare adapter vẫn OK ở bước này)
RUN npm install
RUN npm run build


# ===== runtime =====
FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
