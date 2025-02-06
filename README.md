<img width="830px" src="preview/pre_sony.png">

## Create USB-flash multiboot

### General information on partitions.

A flash drive formatted as a hard drive and the hard drive itself with a classic MBR can have up to 4 partitions. The partitions are the main ones - such an OS (because they are loading), and an expanded partition. In the expanded, logical discs are created (up to 128 partitions), they cannot be loading for Windows, Linux has exceptions.

- (hd0,0) The first main partition. 
- (hd0,3) The fourth main partition where the image will be mounted. 
- (hd0,4) and older logical discs.

#### To get a USB-flash as (HD0.0), format it with one partition.

### Format a USB-flash for multiboot.

Bootice (select usb flash drive) > Parts manage > Re-Partitioning > USB-HDD mode (Single Partition) > File System FAT32/NTFS (FAT32 does not support files more than 4GB) - so we select NTFS > Start LBA 2048 > ОК > Ок.

### How to make a flash drive bootable.

1) Bootice (select usb flash drive) > Parts manage > Activate (click, if active, if not, leave it as it is).
2) Bootice > Process MBR > Windows NT 5.x/6.x > Install > Windows NT 6.x > OK.
3) Bootice > Process PBR > Grub4Dos > Install > Version 0.4.6а > ОК > ОК.

### For USB-HDD.

Create the base partition or use the existing one, make it active and install it MBR, PBR. So that there are no problems with some bios, the section should be up to 128 GB and is at the beginning of the disk.

### Create a Multiboot USB-flash.
 
- Format the USB-flash in Bootice > Parts Manage > Repartitioning (in FAT32 - will work longer and faster, in NTFS - to support files more than 4GB).
- Using the BOOTICE program, install the bootloader, as prescribed above in the item - **How to make a flash drive bootable.**.
- The contents of the "USB-Files" folder are copied to the USB-flash drive.
- Integrate the FiraDisk driver into the ISO-image of Windows and copy it on the USB-flash in the ISO folder (you can rename folder as you like) and rename the ISO-image as you want.
- If the "WinContig" program after copying images on the USB-flash shows after analysis that defragmentation is needed - will defragment ISO-images on the USB-flash.
- Edit the shell menu items > menu.lst to the ISO links are correct and the names of the ISO-images is correct.
- Copy any Linux distro to the LUX folder (you can rename folder as you like).
- Copy any Winpe LiveCD to the PE folder (you can rename folder as you like).

```
Folders "ISO, LUX, PE, Soft" make for usability - you can copy all ISO-images in the one folder.
```

### The structure of the Multiboot USB-flash drive.

Multiboot USB root/ 

    ├── GFX/                                    
          └── mac.gz                                
          └── unifont.hex.gz  
          
    ├── ISO/                                    
    ├── LUX/                                   
    ├── PE/                                    
    ├── Soft/  
    
    ├── AutoUnattend.xml  
    ├── GRLDR    
    ├── liveusbl  
    ├── winpeshl.ini                     
    └── menu.lst             

  > [!IMPORTANT]
  > ### The Multiboot USB-flash like this will work and in BIOS Legacy and in UEFI.

. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   

### Prebuild.

- FiraDisk_integrator - FiraDisk integration utility into the ISO-images of Windows;
- WinContig - defragmentation utility on a flash drive.
- MobaLive USB.exe - testing ready-made USB-flash under Windows.

### ISO-images Windows.

In order for the Windows ISO-image to start installing from this flash drive, it is necessary to integrate the FiraDisk driver into an ISO-image. 
To do this, the script is used > FiraDisk_integrator.
This script integrates FiraDisk driver into the Windows installation image, which allows the Windows installation from the ISO-image using GRUB4DOS.

- To integrate FiraDisk driver into the Windows, create a folder in the root directory of your hard drive.The name of the folder should be on the Latin without spaces and contain no more than 8 characters.The hard drive should have enough free space to create a copy of the Windows image.
- Create a folder, for example, with the name “Firadisk” and copy the Windows ISO-image inside. You can copy several Windows images, different editions and so on. It all depends on the size of your USB-flash.
- Copy the FiraDisk_integrator script into the same folder.
- Launch the FiraDisk_integrator script on behalf of the administrator. The script in turn processes all ISO-images and creates its ISO-images with a FiraDisk-driver.

```
Note: during the operation of the FiraDisk Integrator script, better to turn off the antivirus!
```
### WinContig analys and defragmentation.

Many users takes the error of “insufficiently free continuous clusters” while trying to defragment the ISO-image to work in a multiboot USB-flash or HDD. For defragmentation of ISO-images, we will use the WinContig program. WinContig is shows this error.

When creating a multiboot USB-flash, ISO files are placed in a special folder. On the disk, the file is stored not in one place, but is broken by many sectors, and when trying to read such ISO, the system is has this problem. For normally ISO to work , it is necessary that it be continuous, i.e. not scattered through the sectors, but went in sequence. If this does not happen, the system cannot unload into the RAM. 

Select > analyze and look - need or not the optimization of ISO-images on a USB flash drive. 

If required >

Launch WinContig > go to the drive list > select the drive where ISO images are stored > select the Properties > Service > check and select > optimize.

. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

### Ready to work skins in folder > make_skins > skins

To use another skin, take any skin> for example > mac.gz.
Copy skin to USB-flash in folder GFX.
Open in notepad "menu.lst" file.
Change the name of the installed skin "sony.gz" to new "mac.gz" in stroke > gfxmenu /GFX/sony.gz and save them.
Enjoy to the new design!

#### Skins list.

- color.gz
- cube.gz
- mac.gz
- modus.gz
- sony.gz

#### Skins preview look at the folder > preview

#### View on [GitHub](https://github.com/yojeero/usb_multiboot)

#### Читать [по русски](https://github.com/yojeero/usb_multiboot/blob/main/README_Ru.md)