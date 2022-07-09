FROM node:14-alpine3.16
ARG IMG_VER
LABEL version=${IMG_VER:-1.0.0}
MAINTAINER Rakesh Kanchalwar
ENV NODE_ENV=staging
WORKDIR /home/node/app
COPY ./node-weight-tracker .
RUN npm install
EXPOSE 8080
CMD ["node", "src/index.js"]


#docker build  --build-arg IMG_VER=1.0.2 -t weight-tracker:1.0.2 .