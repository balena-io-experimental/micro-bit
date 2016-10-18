# NUC python base-image
# See more about resin base images here: http://docs.resin.io/runtime/resin-base-images/
FROM resin/nuc-python:3.5

# Enable systemd init system
ENV INITSYSTEM on

# Use apt-get to install dependencies
RUN apt-get update && apt-get install -yq \
    binutils-arm-none-eabi \
    cmake \
    gcc-arm-none-eabi \
    libstdc++-arm-none-eabi-newlib \
    libnewlib-arm-none-eabi \
    ninja-build \
    python-dev \
    python-setuptools \
    srecord && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install yotta
RUN pip install yotta

# Make the /assets directory
RUN mkdir -p /assets

# Set the working directory
WORKDIR /usr/src/app

# Copy all files to the working directory in the container
COPY . ./

# Set the target
RUN yt target bbc-microbit-classic-gcc

# Compile the firmware
RUN yt build

# # Move the firmware to /assets/
RUN mv build/bbc-microbit-classic-gcc/source/micro-bit-combined.hex /assets/

# Below we try to reduce the image size as much as possible to speed up the
# development cycle

# Remove packages
RUN apt-get purge --auto-remove -yq \
    binutils-arm-none-eabi \
    cmake \
    gcc-arm-none-eabi \
    libstdc++-arm-none-eabi-newlib \
    libnewlib-arm-none-eabi \
    ninja-build \
    python-dev \
    python-setuptools \
    srecord 

# Remove yotta
RUN pip uninstall -yq yotta 

# Remove everying from the working directory
RUN rm -rf *