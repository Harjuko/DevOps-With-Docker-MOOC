FROM node:alpine as build-stage

COPY . /app

WORKDIR /app

ENV API_URL="http://localhost:8000"

RUN npm install && npm run build

FROM node:alpine

WORKDIR /app

COPY --from=build-stage /app/build /app/build

RUN npm install -g serve &&\
    adduser -D appuser &&\
	chown -R appuser /app

USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]





