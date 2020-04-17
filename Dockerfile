FROM node:8.17-alpine

RUN apk update && apk upgrade && \
	apk add --no-cache \
	python \
	make \
	g++

# Create app directory
RUN mkdir /code
WORKDIR /code

# Install app dependencies
ADD . /code/

# Run Yarn to install all dependencies
RUN yarn install --pure-lockfile
