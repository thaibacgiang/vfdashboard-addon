FROM node:22-alpine

WORKDIR /app
RUN apk add --no-cache git sed

# Clone source
RUN git clone https://github.com/VF9-Club/VFDashboard.git .

# Patch astro.config.mjs: bỏ cloudflare adapter
RUN sed -i \
  -e "s/@astrojs\\/cloudflare//g" \
  -e "s/cloudflare()//g" \
  astro.config.mjs

# Cài lại dependency
RUN npm install

EXPOSE 4321

CMD ["npm", "run", "dev", "--", "--host"]
