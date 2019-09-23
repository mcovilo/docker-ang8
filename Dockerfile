FROM node:12.2.0

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

RUN npm install

RUN npm install -g @angular/cli@8.3.5 --unsafe

COPY . /app

CMD ["ng", "serve"]