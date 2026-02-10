FROM node:22-alpine

WORKDIR /app
RUN apk add --no-cache git

# Clone source
RUN git clone https://github.com/VF9-Club/VFDashboard.git .

# Ghi đè astro.config.mjs để loại bỏ Cloudflare adapter
RUN cat > astro.config.mjs << 'EOF'
import { defineConfig } from "astro/config";

export default defineConfig({
  server: {
    host: true,
    port: 4321
  }
});
EOF

# Cài dependency
RUN npm install

EXPOSE 4321

CMD ["npm", "run", "dev", "--", "--host"]
