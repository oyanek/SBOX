# Use Ubuntu as the base image
FROM ubuntu:22.04

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install essential tools
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    wget \
    vim \
    python3 \
    python3-pip \
    && apt-get clean

# Set up a working directory
WORKDIR /DOCK_UBU