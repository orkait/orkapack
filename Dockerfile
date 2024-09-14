# Use the official Verdaccio image base
FROM node:20-alpine

# Install htpasswd utility
RUN apk add --no-cache apache2-utils

# Install Verdaccio globally
RUN npm install -g verdaccio

# Create a directory for Verdaccio's configuration
RUN mkdir -p /verdaccio/conf

# Copy the custom configuration file and htpasswd file into the container
COPY ./config.yaml /verdaccio/conf/config.yaml
COPY ./htpasswd /verdaccio/conf/htpasswd

# Create a new user and group to run Verdaccio, and set permissions
RUN addgroup -S verdaccio && adduser -S verdaccio -G verdaccio
RUN chown -R verdaccio:verdaccio /verdaccio

# Switch to the non-root user
USER verdaccio

# Expose the port Verdaccio runs on
EXPOSE 4873

# Run Verdaccio
CMD ["verdaccio", "--config", "/verdaccio/conf/config.yaml"]
