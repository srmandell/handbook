FROM node:latest@sha256:6c40186721d8199902740678b2bddd7e24c2dcc7020c3ce0b0f70f0b9d754ea1

ENV NODE_OPTIONS=--openssl-legacy-provider

COPY . /app

RUN chown -R node:node /app
WORKDIR /app
USER node
