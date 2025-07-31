FROM mcr.microsoft.com/devcontainers/ruby:0-2.7-bullseye

# Install packages needed for OACIS development
RUN apt-get update && apt-get install -y \
    redis-tools \
    && rm -rf /var/lib/apt/lists/*
