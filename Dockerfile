# Use an official Node.js image as the base
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from the current directory on the host machine to the container
COPY ./ /usr/src/app  # Explicitly state the paths to avoid context issues

# Expose the port your app runs on
# Use an official Node.js image as the base
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy only necessary files
COPY server.js /usr/src/app/
COPY index.html /usr/src/app/

# Expose the port your app runs on
EXPOSE 1000

# Start
EXPOSE 1000

# Start the app
CMD ["node", "server.js"]
