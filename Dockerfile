# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to leverage Docker cache
COPY package*.json ./

# Install production dependencies
RUN npm ci --omit=dev

# Copy the rest of the application source code
COPY . .

# The app listens on port 80 by default, but this can be overridden by the PORT env var
EXPOSE 80

# The command to run the application
CMD [ "node", "node.js" ]
