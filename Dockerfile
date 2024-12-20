
FROM node:14
COPY . /usr/src/app/
COPY package*.json ./
RUN npm install 
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]

