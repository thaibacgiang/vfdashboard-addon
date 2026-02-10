FROM node:22-alpine

WORKDIR /app

RUN apk add --no-cache git
RUN git clone https://github.com/VF9-Club/VFDashboard.git .

RUN npm install
RUN npm run build

EXPOSE 4321
CMD ["npm", "run", "preview"]
