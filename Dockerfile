# pull official base image
FROM node:12.22.12-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./

# add app
COPY . ./

RUN npm install --silent
RUN npm run build

EXPOSE 3000
# start app
CMD ["npm", "start"]
