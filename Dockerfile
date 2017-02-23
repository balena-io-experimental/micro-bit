# micro-bit base image
# See more about resin base images here: http://docs.resin.io/runtime/resin-base-images/
FROM resin/microbit

# Set the working directory
WORKDIR /usr/src/app

# Copy config files to the working directory
COPY config.json module.json ./

# Copy source files to the working directory
COPY source/ ./source

# Compile the firmware
RUN yt build && \
    nrfutil dfu genpkg --application build/bbc-microbit-classic-gcc/source/micro-bit.bin /assets/application.zip
