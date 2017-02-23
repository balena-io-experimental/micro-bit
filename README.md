# microbit
edge-node-manager compatible firmware for the micro:bit

### Getting started
 - Ensure you have [Docker](https://www.docker.com/) installed on your local machine and the daemon is running
 - Sign up on [resin.io](https://dashboard.resin.io/signup)
 - Work through the [getting started guide](https://docs.resin.io/raspberrypi3/nodejs/getting-started/)
 - Create a dependent application called `microbit`
 - Set these variables in the `Fleet Configuration` dependent application side tab
    - `RESIN_SUPERVISOR_DELTA=1`
    - `RESIN_HOST_TYPE=microbit`
 - Clone this repository to your local workspace
 - Add the dependent application `resin remote` to your local workspace
 - Retrieve the dependent application ID from the Resin dashboard, for example: If your dependent application URL is
 `https://dashboard.staging.io/apps/13829/devices` the ID is `14495`
 - Change [line 3](https://github.com/resin-io-projects/micro-bit/blob/master/source/main.cpp#L3) in `source/main.cpp` `#define APP_ID 1234567890` to point to your dependent application ID e.g. `#define APP_ID 14495`
 - Run the provisioning script `$ ./provision.sh`, this will generate the initial firmware `micro-bit-combined.hex`
 - Connect the micro:bit to your computer using a USB cable
 - Copy `micro-bit-combined.hex` to your micro:bit
 - Push code to resin as normal :)
