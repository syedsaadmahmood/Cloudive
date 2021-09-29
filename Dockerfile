# build stage
FROM node:12.18.4-alpine as build
WORKDIR /app
COPY package.json /app/package.json
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.20.0-alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
COPY --from=build /app/dist /usr/share/nginx/html
# run nginx
CMD ["nginx", "-g", "daemon off;"]