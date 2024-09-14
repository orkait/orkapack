# Use the official Verdaccio image
FROM verdaccio/verdaccio:5.0

# Copy your custom configuration file and htpasswd file into the container
COPY ./config.yaml /verdaccio/conf/config.yaml
COPY ./htpasswd /verdaccio/conf/htpasswd

# Expose the Verdaccio port (default is 4873)
EXPOSE 4873