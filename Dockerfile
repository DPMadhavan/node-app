FROM node:8-alpine

WORKDIR /usr/src/your-app

COPY package*.json ./

RUN if [ "$NODE_ENV" = "development" ]; \
	then npm install;  \
	else npm install --only=production; \
	fi

COPY . .
