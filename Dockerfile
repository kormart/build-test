# Use an existing image as a base
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose a port for the container
EXPOSE 3000
# ENTRYPOINT ["/bin/bash", "-c", "echo hello"]
# Start the application when the container starts
CMD [ "npm", "start" ]
