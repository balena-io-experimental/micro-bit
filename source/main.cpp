#include "MicroBit.h"

MicroBit uBit;

int main()
{
    uBit.init();

    while (true) {
        uBit.display.scroll("***RESIN.IO***");
    }

    release_fiber();
}
