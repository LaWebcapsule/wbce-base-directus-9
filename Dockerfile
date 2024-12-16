FROM node:18

# Copy package.json and package-lock.json first to leverage Docker layer caching
COPY package*.json /app/

# Set working directory
WORKDIR /app

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Start Directus server
CMD ["npx", "directus", "start"]
