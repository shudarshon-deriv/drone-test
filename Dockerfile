FROM node:alpine
WORKDIR /home/node

# using wildcard (*) to copy both package.json and package-lock.json
COPY package*.json /home/node/
RUN npm install --production

# create and set app directory as current dir
WORKDIR /home/node/app
COPY app/ /home/node/app/
EXPOSE 3000
CMD ["node", "app.js"]
