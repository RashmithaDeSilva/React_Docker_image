FROM node:latest

# Set labels
LABEL maintainer="Lahiru De Silva" \
      version="1.0" \
      description="React starting application inside a Docker container"

# Set the working directory in the container
WORKDIR /app

# Update package list
RUN apt-get update

# Set the default app name using an environment variable
ARG REACT_APP_NAME=my-react-app

# Install create-react-app globally
RUN npm install -g create-react-app

# Create React app with the specified name
RUN npx create-react-app $REACT_APP_NAME

# Change to the app directory
WORKDIR /app/$REACT_APP_NAME
