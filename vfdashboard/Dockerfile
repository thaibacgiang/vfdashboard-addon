ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
    nodejs \
    npm \
    git

WORKDIR /app

RUN git clone https://github.com/VF9-Club/VFDashboard.git .

RUN npm install
RUN npm run build

EXPOSE 3001

CMD ["node", "dist/server/entry.mjs"]
