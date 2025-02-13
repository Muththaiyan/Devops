# Use Node.js 14 as the base image
FROM node:15

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 to allow access from outside the container
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]