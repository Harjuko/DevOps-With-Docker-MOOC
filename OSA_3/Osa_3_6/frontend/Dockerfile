FROM node:14-alpine as build-stage

WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build

FROM nginx:stable-alpine
COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html
EXPOSE 5000
CMD ["nginx", "-g", "daemon off;"]