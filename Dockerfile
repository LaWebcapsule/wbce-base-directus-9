FROM node:18
COPY . /app
WORKDIR /app
CMD ["npx", "directus", "start"]