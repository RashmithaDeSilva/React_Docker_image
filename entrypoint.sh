#!/bin/bash

# Set the app name using the provided environment variable or use the default
APP_NAME=${REACT_APP_NAME:-my-react-app}

# Create React app with the specified name
npx create-react-app $APP_NAME

# Change to the app directory
cd $APP_NAME