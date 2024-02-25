FROM node:18

WORKDIR /app

COPY . /app/

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npx", "serve", "-s", "dist", "-l", "3000"]

