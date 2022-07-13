FROM node:16

WORKDIR /usr/src/app   
# Where it'll be in the container.

COPY package*.json ./    
# cp to workdir

RUN npm install

COPY . /usr/src/app   
# tc, Where it'll be in the container./

EXPOSE 3000

CMD ["npm", "start"]