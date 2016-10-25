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

### Getting started
 - Note: Take a look at the [edge-node-manager](https://github.com/resin-io/edge-node-manager) if you havn't already done so
 - Create a new dependant application called `microbit` from the `Dependant Applications` tab accessed from the side bar
 - Add the dependent application `resin remote` to your local workspace using the useful shortcut in the dashboard UI, for example:
```
$ git remote add resin gh_josephroberts@git.resinstaging.io:gh_josephroberts/microbit.git
```
 - Retrive the dependent application `UUID` from the Resin dashboard, for example: If your dependant application URL is
 `https://dashboard.resinstaging.io/apps/13829/devices` the `UUID` is `14495`
 - Set the dependent application `UUID` on [line 82](https://github.com/resin-io/edge-node-manager/blob/master/application/application.go#L82)
  in `application/application.go` to point to your dependant application, for example: `initApplication(14495, board.MICROBIT)`
 - Make sure you add, commit and push the change to the edge-node-manager application
 - Add, commit and push the `microbit` application to your RPi3, for example:
```
$ git add src/main.c
$ git commit -m "Set the application UUID"
$ git push resin master
```
 - Turn on your micro:bit dependent device within range of the RPi3 gateway device and watch it appear on the Resin dashboard
