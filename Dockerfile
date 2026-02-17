# Use official Ubuntu base image
FROM ubuntu:22.04

# Avoid interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Update packages
RUN apt-get update && apt-get install -y \
    curl \
    && apt-get clean

# Default command
CMD ["echo", "Hello World from Ubuntu Docker Container!"]
