# Use official Node.js image
FROM node:18

# Set working directory in the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN yarn install

# Copy the full application
COPY . .

# Expose the port Medusa runs on
EXPOSE 9000

# Start the Medusa backend
CMD ["yarn", "start"]
