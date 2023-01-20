FROM node:18-alpine

RUN echo -e "http://nl.alpinelinux.org/alpine/v3.17/main\nhttp://nl.alpinelinux.org/alpine/v3.17/community" > /etc/apk/repositories
RUN apk update && apk add --no-cache --virtual .gyp python3 make g++
RUN apk add --update nodejs npm

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3001

CMD npm run global-object ; npm run memory-heap ; npm run call-stack; npm run stack-overflow; npm run runtime; npm run asynchronous