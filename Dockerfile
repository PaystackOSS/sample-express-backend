FROM node:lts-alpine

WORKDIR /usr/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5001
CMD ["npm", "start"]