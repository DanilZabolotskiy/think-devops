FROM node:12.14.1-alpine as build-stage
WORKDIR /app/
COPY . .
RUN yarn
RUN yarn build

FROM nginx:1.17.9-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build-stage /app/build/ /usr/share/nginx/html
