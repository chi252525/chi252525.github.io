FROM node:20.11.1-alpine as build-stage

RUN mkdir /app
COPY . /app
WORKDIR /app
ARG BUILD_ARG

RUN npm ci
RUN npm run build:${BUILD_ARG}

FROM node:20.11.1-alpine as production-stage

RUN mkdir -p /app/dist
COPY --from=build-stage /app/dist /app/dist
WORKDIR /app

RUN apk --update add tzdata
RUN npm install -g http-server-spa

EXPOSE 8080

CMD http-server-spa dist/spa index.html 8080
