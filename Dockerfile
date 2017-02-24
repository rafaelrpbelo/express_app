# Get elixir latest image from docker
FROM ubuntu:latest

# Set DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Set Node version
ENV NODE_VERSION=7.6.0

# Update package control
RUN apt-get update

# Install curl
RUN apt-get install curl -y

# Install xz-utils
RUN apt-get install xz-utils -y

# Get NodeJS
RUN curl -sSL "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" | tar xfJ - -C /usr/local --strip-components=1 && \
  npm install npm -g
