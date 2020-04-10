# Prueba de concepto
From alpine

LABEL maintainer="spardinas@gmail.com"

RUN apk add --update nodejs nodejs-npm

COPY . /src

WORKDIR /src

RUN npm install

EXPOSE 8080

ENTRYPOINT [ "node", "./app.js" ]
