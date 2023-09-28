FROM node:16.10.0 

# RUN mkdir -p /app
WORKDIR /app

COPY package.json .
COPY yarn.lock .


RUN yarn install
COPY . .
RUN yarn build


# EXPOSE 80

CMD ["npm","run","start"]


