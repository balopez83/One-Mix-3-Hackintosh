# One-Mix-3-Hackintosh
This project attempts to bring MacOS to the One-Mix 3 &amp; 2s with Full Support

If you can help fix any of the issues below I would greatly appreciate it. I believe some of these issues could be fairly easy to fix but will take the right person who knows just what the issue is. Please feel free to post any issues or questions and I will attempt to get to it as soon as I can.

Thank you to Github user hellodeibu who's work on the GPD Pocket 2 took me almost to the finish line as well as many others in the Hackintosh community that shared their knowledge and experience through countless forums to make this possible.

## OS Status

- macOS Sierra:
  * Nearly perfect just some final touches as listed below
  ![Image of Sierra](https://github.com/balopez83/One-Mix-3-Hackintosh/blob/master/Images/AboutMacSierra.png?raw=true)
- macOS High Sierra:
  * Untested but first attempt would not boot the installer without framebuffer errors or freezing
- macOS Mojave:
  * Can boot installer with this EFI using the instructions listed below but not iGPU graphics acceleration yet
  * All other features working or WIP are listed below
- macOS Catalina (BETA):
  * Untested but first attempt would not boot the installer without framebuffer errors or freezing
    

## Fully Functional

- Full hardware graphics acceleration (macOS Sierra Only)(High Sierra, Mojave, and Catalina not yet working)
- Built-in speakers
- Bluetooth
- Battery reading and charging recognition
- Both USB-A 2.0 and the USB-C port 
- CPU Temperature and voltage/wattage reading

## Non-Functional or Limited Funtion

- Sleep mode (WIP)
- Shutdown & Restart (hangs at black screen, should be a simple fix, WIP)(Sierra issue only)
- Built-in microSD card reader (unless used as an installer or if you for some reason installed macOS on it)
- Power Management (I am not confident this is fully functional though is working well enough for now, WIP)
- USB-3.0 (temporarily functioning with USB limit patch 10.12.X only, I will work on an SSDT patch for all OS versions later. WIP)

## Likely never to work
- Touch Screen (I2C controller, there may be a possibility of getting this to work as there is a group of people working on the I2C controller for the Surface Pro and it may also work for this device)
- Fingerprint sensor
- Rotation of Clover boot menu (pretty sure this can't happen unless the developer adds this as a feature)

## To-Do
1. Fix items above with limited or no functionality
2. Fix remaining errors in the DVMT and SSDT patches
3. Fix graphics acceleration in Mojave and Catalina (URGENT)
4. Fix Power Management and Screen Sleep
5. Fix Clover boot menu rotation (likely need to wait for this feature to be added if ever)


## How to Hackintosh your One-Mix:
## Requirements

- One-Mix 3 (This may work on the One-Mix 2s as it has the same m3-8100Y processor and UHD 615 iGPU)
- USB 2.0 or microSD card to install macOS on (minimum 8GB though I recommend at least 16GB. DO NOT USE A USB 3.0 DRIVE)
  - If you use a USB 3.0 drive in the standard port the installer will fail, additionaly after install it will fail if you boot with a USB 3 in the standard port. You can use a USB to USB-C adapter or USB-C hub with a standard USB 3 plugged into the hub with no issues)

## Recommended

- USB-C hub or adapter with both USB-C charging passthrough and ethernet
- USB-A WiFi adapter to get on the internet on the go (its an ultra portable computer, I mean this just makes sense :) )(I recommend the Edimax with wireless AC as it is supported all the way to Mojave and likely Catalina)

## Guide: This process is very simple despite the many steps. I have provided so many steps to make sure everyone has clarity on what to do and why you need to do it. 

## The Install:
1. Format a USB drive/stick or microSD card as HFS+J (I recommend GPT partition scheme but MBR should work as well).
2. Download macOS from the AppStore either from a friends computer,virtual machine, etc.
3. Download a macOS install disk creator program. (I recommend "Install Disk Creator by MacDaddy https://macdaddy.io/install-disk-creator/ but you can also use others like "Disk Maker X", etc.)
4. Download "Clover Configurator" (https://mackie100projects.altervista.org/download-clover-configurator/)
5. Download "Clover" (you can actually do this through 'Clover Configurator')
6. Download entire github as zip file (this will ensure all files are saved in the proper format)
7. Using your macOS install disk creation program create an install disk on either your USB or MicroSD (Make a sandwich, this will take some time) 
8. Once finished mount the EFI partition of the USB/SDcard drive, copy the EFI folder from this repository to the "EFI" partition
9. OPTIONAL TASK: using the "Clover" installer update to the most current version. 
10. Make a backup/duplicate of 'config.plist' (you will need the backup later, plus its just a good idea anyway when you change anything in this file), open the original `config.plist` with Clover Configurator and click on 'Graphics', uncheck 'Inject Intel' and change 'ig-platform-id' to 0x12345678 
11. Save and close 'config.plist'
12. Assuming you are leaving Windows installed and you will be dual-booting, shrink your windows partition and create a new one for your macOS install (I recommend using part or all of the 100GB 'data' drive that is already created from the factory). Personally I added a second SSD in the vacant slot and installed macOS there. (if unsure there are guides on Google)
13.Reboot with USB/SDcard installer plugged in and at the 'One-Netbook' boot logo press the 'Del' key and hold until you are brought into the UEFI/BIOS. Press left arrow key and up key until your USB drive is selected. Once selected press enter.
14. The computer should now boot into the clover boot menu (which is rotated), use arrow keys to select the macOS installer if not already selected. Press enter.
15. The installer should now start and may take a few minutes depending on the speed of your install disk
16. Once greeted by the installer launch the Disk Utility and format the partition you created as either HFS+J or APFS (dependent on the version of macOS you are installing, also for High Sierra and higher it will autoconvert to APFS which is fine and won't cause issues)
17. If the Disk Utility crashes simply restart and try again as it usually works the second time. If you receive an error that there is not enough space you may need to Pre-Create a 200mb EFI partition using 'DiskPart' from Windows Command line (google has instructions)
18. Once the partition has been formated exit Disk Utility and begin macOS installation on the created partion. 
    * CAUTION: if you install via the USB-C port the installer will turn off the screen after a few minutes and sometimes but often not will not turn the screen back on with a key press. You can either use a USB-C hub that will provide power (great option), stand by and keep moving the mouse or clicking a key while its installing (BAD Option as install takes a loooonnnnnggg time), Use a USB 2.0 (great option cause then you can charge with the USB-C), or delete/move the contents of the ACPI-->Patched folder (good option, though you will need to put this back after install or you will be missing a lot of important features like the battery status).
    * If your screen does go blank while installing and the screen does not turn back on, you can either wait till the install completes (approx 30 to 90 min) and then force shut-down if the computer does not reboot on its own, or alternatively force shut-down and repeat steps 13 through 18.
19. After reboot boot to UEFI/BIOS and select USB installer again, boot to clover, select the new macOS you installed (it may say something about an installer there too but on the next boot will only indicate your macOS version and not an installer. If you boot back into the USB installer you selected the wrong one)
20. Follow the setup prompts once booted and DO-NOT sign in to your AppleID/iCloud account (it will not work yet, this can be fixed in the guide linked below)

## First Boot: 

1. Once you reach the desktop after the first boot up you will need to install 'Clover' on to the EFI partition of your internal SSD so that you can boot without the USB/SDcard installer. Mount the EFI of both the internal SSD and the USB/SDcard and copy the EFI folder to the internal SSD EFI partition (it is ok to copy over the existing EFI that the macOS install created as it doesn't do anything on a hackintosh)
2. After copying the EFI to your SSD if you haven't already I recommend updating Clover to the newest version. 
3. Copy 'Clover Configurator' to the desktop or applications folder if you want to 'Install' it. Launch the program and open the 'config.plist' file in the Clover directory in your SSD EFI folder.
4. Undo the changes you made in step 10 in the section "The Install" or simply delete the existing 'config.plist' file and rename your backup config file back to 'config.plist', save and keep open for next step. (internal SSD ONLY, you want to keep everything on the USB/SDcard the same in case you need to fix/reinstall something)
5. Fix iMessage & other iCloud access. In 'Clover Configurator' click on SMBIOS, on the right side you will see a button with arrows pointing up and down just below the 'Check Coverage' button, click the button with arrows and select again the already selected product. This will fill all the empty boxes. Save and then go to this site (https://www.tonymacx86.com/threads/an-idiots-guide-to-imessage.196827/) to fix the remaining items to get iMessage and iCloud fully functional. Once complete reboot and move to step 6.
6. The step you have undoubtedly been most wanting to fix we will fix now, the screen orientation. 
   * By now you should have full graphics acceleration, you can test/check by clicking the apple logo in the upper left and then clicking 'About This Mac'; under 'Graphics' you should see "Intel UHD Graphics 615 2048 MB" if this does not say 2048 MB and instead has 15 or less MB something is wrong and you need to check your steps again, specifically check step 10 from "The Install" and 4 from this section. (Screen rotation will NOT work until full graphics acceleration is enabled)
   * If you have 2048MB of graphics memory then you can now proceed to fix the orientation: 
     1. Hold down the "Windows" key & "Alt" key then move mouse and click on the settings icon, while still holding both keys click on "Displays". If everything was done right you will see the "Rotation" option, click the drop down and click "90*" [asterix represents the degree symbol]
   * You may also notice that the screen colors appear muted or washed out, you can fix this also by clicking the "Color" tab and selecting a diferent "Display profile". (I recommend either 'Generic RGB Profile' or 'Adobe RGB (1998)' but its really up to your preference)
7. Sign in to iCloud in settings and select whatever options you want, though, I suggest not allowing iCloud the option of unlocking your Hackintosh or keeping find my Mac turned on as this feature is known to cause some problems on some devices if you accidently use remote lock or wipe in iCloud. (you can lock yourself out with only the option of restoring or starting over with a new install)
8. Congratulations, you're done with setup. Feel free to customize and install software as you want. 


### Enabling HiDPI mode IF it does not already switch to HiDPI after step 7 above
You can enter the following command post-installation to enable HiDPI mode:

`sudo defaults write /Library/Preferences/com.apple.windowserver.plist DisplayResolutionEnabled -bool true`


## Included
Required Kexts to be able to run macOS are included already. You may want to check to see if there are newer versions available but it is not required.

- [Lilu](https://github.com/acidanthera/Lilu) v1.3.7
- [WhateverGreen](https://github.com/acidanthera/WhateverGreen) v1.3.0
- [AppleALC](https://github.com/acidanthera/AppleALC) v1.3.9
- [VirtualSMC](https://github.com/acidanthera/VirtualSMC) v1.0.6
  - SMCProcessor v1.0.6
  - SMCBatteryManager v1.0
  - SMCSuperIO v1.0.6
- [USBInjectAll](https://bitbucket.org/RehabMan/os-x-usb-inject-all/downloads) v0.7.1
- [VoodooHDA](https://sourceforge.net/projects/voodoohda/) v2.9.2
- [VoodooI2C](https://github.com/alexandred/VoodooI2C) v2.2
- [VoodooPS2Controller](https://bitbucket.org/RehabMan/os-x-voodoo-ps2-controller/downloads/) v1.8.28
- [CPUFriend](https://github.com/acidanthera/CPUFriend) v1.1.8
- [CodecCommander](https://bitbucket.org/RehabMan/os-x-eapd-codec-commander/downloads/) v2.7.1
- [NullEthernet](https://bitbucket.org/RehabMan/os-x-null-ethernet/downloads/) v1.0.6
- ~~[DisplayMergeNub.kext] (This is a custom display EDID and setting injector. It is unlikely that you will have your internal monitor working without this. You can follow these instructions (https://osxlatitude.com/forums/topic/10236-how-to-fix-black-screen-in-high-sierra/) to create your own if this one does not work but make sure you follow the instructions carefully as you could end up unable to completely boot. Also the script listed in that site is no longer available but a simple conversion tool to convert Base64 to Hex was all that was needed)~~ (No Longer Needed so long as Inject EDID remains checked with EDID Hex information)
