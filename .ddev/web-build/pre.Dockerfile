# See https://ddev.readthedocs.io/en/stable/users/extend/customizing-images/#adding-extra-dockerfiles-for-webimage-and-dbimage
# For detailed and additional information for customizing docker images

# Copy the Cloudflare certificate into the container
COPY cloudflare.pem /usr/local/share/ca-certificates/cloudflare.crt

# Update CA certificates
RUN update-ca-certificates
