FROM node:latest

# Set labels
LABEL maintainer="Lahiru De Silva" \
      version="1.0" \
      description="React starting application inside a Docker container"

# Set the working directory in the container
WORKDIR /app

# Update package list
RUN apt-get update

# Install create-react-app globally
RUN npm install -g create-react-app

# Create an entrypoint script to set the app name and run the app
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Set the default app name using an environment variable
ENV REACT_APP_NAME=my-react-app

# Command to run when the container starts
ENTRYPOINT ["/app/entrypoint.sh"]
