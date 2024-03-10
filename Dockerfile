# Use an official Node runtime as a parent image
FROM node:21-slim

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install any dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variable
# ENV NAME World

# Run app.js when the container launches
CMD ["node", "app.js"]

