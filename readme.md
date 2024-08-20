# Custom Firmware

A script to create custom firmware providing firmware for the Ender-3 V3 and V3 Plus that has been pre-rooted, ssh-enabled and 
emergency firmware factory reset feature installed.  This is very minimal changes on top of the default
firmware it is not to compete with the pre-rooted firmware from Destinal which includes Moonraker, Fluidd, etc

Creality-Helper-Script is included as well. To run just type in `./helper.sh`

**I WILL NOT BE HELD RESPONSIBLE IF YOU BRICK YOUR PRINTER - CREATING AND INSTALLING CUSTOM FIRMWARE IS RISKY**

## Prerequisites

You will need a linux machine with the following commands available, something like ubuntu or arch is fine:

- p7zip (7z command)
- wget
- unsquashfs
- mksquashfs

The packages on ubuntu can be installed like so:

```
sudo apt-get install p7zip-full squashfs-tools wget
```

Don't try and create this on windows or MacOs, you could do it on a ubuntu vm no problem

## Creating

Then you can create a new firmware file, currently without any customations just to test things work with:

```
export FIRMWARE_PWD='the password from a certain discord' FIRMWARE_VERSION='1.2.3.8' FIRMWARE_LINK='https://www.creality.com/pages/download-ender-3-v3-plus'
./create.sh
```

**NOTE:** You will be required to enter your `sudo` password

The resulting img file will be located at `/tmp/out/F001_ota_img_V6.1.2.3.8.img`

## Testing

It's very important to test this in the safest way possible, luckily creality has provided a way to test
a new firmware image from the cli rather than relying on the display server

```
/etc/ota_bin/local_ota_update.sh /tmp/udisk/sda1/F001_ota_img_V6.1.2.3.8.img
```

## Thanks

pellcorp - for the ready-made script
Guilouz - for the amazing helper script