# Script taken from Imoseyon and modified by LorD CLockaN #


#TOOLCHAIN=/home/lord/android/system/prebuilt/linux-x86/toolchain/arm-2011/bin/
#TOOLCHAIN=/home/lord/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.5.4/bin/
#TOOLCHAIN_PREFIX=arm-eabi-

#PATH=$PATH:/home/lord/Desktop/dhd/arm-eabi-4.5-2011-10/bin/
#export CCOMPILER=/home/lord/Desktop/dhd/arm-eabi-4.5-2011-10/bin/arm-eabi-
PATH=$PATH:/home/lord/Desktop/dhd/arm-eabi-4.6.3-2012-04/bin/
export CCOMPILER=/home/lord/Desktop/dhd/arm-eabi-4.6.3-2012-04/bin/arm-eabi-

make -j16 ARCH=arm CROSS_COMPILE=$CCOMPILER;



cp arch/arm/boot/zImage ../finished/;
cp arch/arm/mach-tegra/baseband-xmm-power2.ko ../finished/;
cp crypto/tcrypt.ko ../finished/;
cp drivers/bluetooth/btwilink.ko ../finished/;
cp drivers/bluetooth/hci_uart.ko ../finished/;
cp drivers/hid/hid-magicmouse.ko ../finished/;
cp drivers/misc/ti-st/gps_drv.ko ../finished/;
cp drivers/misc/ti-st/st_drv.ko ../finished/;
cp drivers/misc/ti-st/ti_hci_drv.ko ../finished/;
cp drivers/net/kineto_gan.ko ../finished/;
cp drivers/net/usb/raw_ip_net.ko ../finished/;
cp drivers/scsi/scsi_wait_scan.ko ../finished/;
cp drivers/staging/ti-st/fm_drv.ko ../finished/;
cp drivers/usb/class/cdc-acm.ko ../finished/;
cp drivers/usb/serial/baseband_usb_chr.ko ../finished/;
cp net/bluetooth/bluetooth.ko ../finished/;
cp net/bluetooth/bnep/bnep.ko ../finished/;
cp net/bluetooth/hidp/hidp.ko ../finished/;
cp net/bluetooth/rfcomm/rfcomm.ko ../finished/;
cp net/wireless/lib80211.ko ../finished/;

echo "";
echo "COMPILING FINISHED!!!";
echo "";
echo "Press any key to do a \"make clean\" or CTRL+C to skip it";
read;
alias make='make -j16 ARCH=arm CROSS_COMPILE=$CCOMPILER'
make clean

