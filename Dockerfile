# Use the official Verdaccio image
FROM verdaccio/verdaccio:5.0

# Copy your custom configuration file and htpasswd file into the container
COPY ./config.yaml /verdaccio/conf/config.yaml
COPY ./htpasswd /verdaccio/conf/htpasswd

# Expose port 80 instead of 4873
EXPOSE 80

# Set Verdaccio to listen on port 80
CMD ["verdaccio", "--listen", "0.0.0.0:80", "--config", "/verdaccio/conf/config.yaml"]
