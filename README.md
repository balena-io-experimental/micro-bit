# microbit
edge-node-manager compatible firmware for the micro:bit

### Getting started
 - Retrieve the dependent application ID from the Resin dashboard, for example: If your dependent application URL is
 `https://dashboard.resinstaging.io/apps/13829/devices` the ID is `14495`
 - Change [line 3](https://github.com/resin-io-projects/micro-bit/blob/master/source/main.cpp#L3) in `source/main.cpp` `#define APP_ID 1234567890` to point to your dependent application ID e.g. `#define APP_ID 14495`
 - Run the provisioning script `$ ./provision.sh`
 - Connect the micro:bit to your computer using a USB cable
 - Copy the output `micro-bit-combined.hex` to your mounted micro:bit
 - Push code to resin as normal :)
