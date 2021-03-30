FROM node:14

EXPOSE 5000
WORKDIR /usr/src/app
COPY . .
RUN useradd -m appuser
RUN chown appuser .
RUN chown -R appuser /usr/local/lib/node_modules

RUN npm install
RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build
RUN npm install -g serve
USER appuser
CMD serve -s -l 5000 build