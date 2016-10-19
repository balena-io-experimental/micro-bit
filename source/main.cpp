#include "MicroBit.h"

MicroBitMessageBus bus;
MicroBitDisplay display;
MicroBitStorage storage;
MicroBitBLEManager bleManager = MicroBitBLEManager(storage);
BLEDevice *ble;

int main()
{
    if (!ble) {
        bleManager.init("14323", "", bus, false);
        ble = bleManager.ble;
    }

     while (true) {
        display.scroll("*!*RESIN.IO*!*");
    }
}
