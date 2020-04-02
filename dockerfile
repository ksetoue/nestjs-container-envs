FROM  mcr.microsoft.com/vscode/devcontainers/typescript-node:0-12

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g nest
RUN npm install

COPY . .

ARG NODE_ENV=${NODE_ENV}
ARG PORT=${PORT}

ENV NODE_ENV=${NODE_ENV}
ENV PORT=${PORT}

EXPOSE ${PORT}

CMD [ "npm", "run", "start:dev" ]

# FROM node:12.13-alpine as production

# ARG NODE_ENV=production
# ENV NODE_ENV=${NODE_ENV}

# WORKDIR /usr/src/app

# COPY package*.json ./

# RUN npm install

# COPY . .

# CMD ["node", "dist/main"]