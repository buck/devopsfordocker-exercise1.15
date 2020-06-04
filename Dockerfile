FROM node:lts-alpine

RUN apk update && apk add git

WORKDIR /demo
RUN git clone https://github.com/buck/devopsfordocker-exercise1.15.git

WORKDIR /demo/devopsfordocker-exercise1.15
RUN npm install typescript -g
RUN npm install

WORKDIR /demo/devopsfordocker-exercise1.15/TypeScript
RUN tsc
EXPOSE 5000

ENV NODE_ENV=development

ENTRYPOINT ["node", "index.js"]
