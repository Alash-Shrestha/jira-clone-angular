FROM node:16-alpine

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install -g @angular/cli@13.2.5

RUN npm install

COPY . .

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]
