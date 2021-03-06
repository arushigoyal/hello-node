FROM node:16-buster as build-step
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build --prod
# Stage 2
#FROM nginx:1.17.1-alpine
FROM bitnami/nginx:latest
#COPY --from=build-step /app/dist/helloworld /usr/share/nginx/html

COPY --from=build-step /app/dist/helloworld /app