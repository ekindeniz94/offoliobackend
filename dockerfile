# Use the official Node.js image
FROM node:lts

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]