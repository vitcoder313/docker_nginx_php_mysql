FROM node:latest

WORKDIR /app

# COPY package*.json ./
# COPY yarn.lock ./
# RUN yarn install --frozen-lockfile

# COPY --chown=node:node . .
RUN npm install