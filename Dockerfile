# sudo docker build -t sass-container .
# Use an official Node.js image as a base image
FROM node:16-slim

# Install Sass globally
RUN npm install -g sass

# Set the working directory inside the container
WORKDIR /usr/src/app

# Default command to run Sass
CMD ["sass"]
