# Use the official Hugo image as the build environment
FROM klakegg/hugo:0.107.0-ext-alpine AS builder

# Copy the content of your Hugo project into the container
COPY . /src

# Build the Hugo site
RUN hugo

# Use the Nginx web server for the runtime environment
FROM nginx:stable-alpine

# Copy the built HTML files and assets from the builder container
COPY --from=builder /src/public /usr/share/nginx/html

# Expose port 80 for HTTP
EXPOSE 80
