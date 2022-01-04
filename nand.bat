sam-ba -p usb -b sam9x60-ek -a nandflash -c erase:0:0x800000
sam-ba -p usb -b sam9x60-ek -a nandflash -c writeboot:boot.bin
sam-ba -p usb -b sam9x60-ek -a nandflash -c write:logo.bmp:0x40000 -c write:at91-sam9x60eknf.dtb:0x180000 -c write:zImage:0x200000
sam-ba -p usb -b sam9x60-ek -a nandflash -c erase:0x800000:0x4000000
sam-ba -p usb -b sam9x60-ek -a nandflash -c write:rootfs.ubi:0x800000
sam-ba -p usb -b sam9x60-ek -a bootconfig -c writecfg:bscr:EMULATION_ENABLED
sam-ba -p usb -b sam9x60-ek -a bootconfig -c resetemul
sam-ba -p usb -b sam9x60-ek -a bootconfig -c refreshcfg:emul
sam-ba -p usb -b sam9x60-ek -a bootconfig -c refreshcfg:emul
sam-ba -p usb -b sam9x60-ek -a bootconfig -c writecfg:bcp-emul:NFC_IOSET1
sam-ba -p usb -b sam9x60-ek -a bootconfig -c lockcfg:bcp-emul
