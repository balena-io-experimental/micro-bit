# microbit
edge-node-manager compatible firmware for the micro:bit

### Modify firmware
 - Change [line 12](https://github.com/resin-io-projects/micro-bit/blob/master/source/main.cpp#L12) in `source/main.cpp` to point to your dependant application UUID

### Compile firmware
 - Ensure you have the dependancies listed in the `Dockerfile`
 - Set the target `$ yt target bbc-microbit-classic-gcc`
 - Compile the firmware `$ yt build`

### Flash firmware
 - Compile the firmware
 - Connect the micro:bit to your computer using the USB cable
 - Drag 'n' drop the compiled firmware from `/build/bbc-microbit-classic-gcc/source/micro-bit-combined.hex` to the mounted micro:bit
