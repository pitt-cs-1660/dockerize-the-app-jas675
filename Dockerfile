FROM node:10-alpine AS alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install --only=production
CMD [ "node", "./app.js" ]
EXPOSE 8080