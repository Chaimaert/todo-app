FROM node:12-alpine

RUN apk add --no-cache git
RUN git clone -q https://github.com/Chaimaert/todo-app.git
WORKDIR /todo-app
COPY . .
RUN yarn install --production
CMD ["node", "/src/index.js"]
