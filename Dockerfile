FROM node:14-alpine3.16
ENV NODE_ENV=staging
WORKDIR /home/node/app
COPY . .
RUN npm install
EXPOSE 8080
CMD ["node", "src/index.js"]