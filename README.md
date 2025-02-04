timeout -1

default /default
gfxmenu /GFX/mac.gz
font /GFX/unifont.hex.gz
graphicsmode -1 100:1000 100:10000 24:32

title Suse
partnew (%@root:~1,3%,3) 0x00 /LUX/suse.iso
map /LUX/suse.iso (0xff)
map --hook
root (0xff)
chainloader (0xff)

title Archcraft
partnew (%@root:~1,3%,3) 0x00 /LUX/archcraft.iso
map /LUX/archcraft.iso (0xff)
map --hook
root (0xff)
chainloader (0xff)

title Fedora Sway
partnew (%@root:~1,3%,3) 0x00 /LUX/fedora.iso
map /LUX/fedora.iso (0xff)
map --hook
root (0xff)
chainloader (0xff)

title Cbpp
partnew (%@root:~1,3%,3) 0x00 /LUX/cbpp.iso
map /LUX/cbpp.iso (0xff)
map --hook
root (0xff)
chainloader (0xff)

title 
clear

title Live
map --mem /PE/live.iso (hd32)
map --hook
chainloader (hd32)/bootmgr

title Aomei Backup
map --mem /PE/aomei.iso (hd32)
map --hook
chainloader (hd32)/bootmgr

title Aomei Partition
map --mem /PE/aomei_p.iso (hd32)
map --hook
chainloader (hd32)/bootmgr

title Macrium
map --mem /PE/macrium.iso (hd32)
map --hook
chainloader (hd32)/bootmgr

title Ease Us
map --mem /PE/easeus.iso (hd32)
map --hook
chainloader (hd32)/bootmgr

title Ease Us Partition
map --mem /PE/easeus_p.iso (hd32)
map --hook
chainloader (hd32)/bootmgr

title Acronis
map /PE/acronis.iso (0xff)
map --mem /PE/acronis.iso (0xff)
map --hook
chainloader (0xff)

title Victoria
map /PE/victoria.iso (hd32)  
map (hd0) (hd1)  
map (hd1) (hd0)  
map --hook  
chainloader (hd32)

title Acronis
map --mem /PE/firadisk.IMA (fd0)
map --mem /PE/acronis.iso (0xFF)
map (hd0) (hd1)
map (hd1) (hd0)
map --hook
chainloader (0xFF)

title 
clear

title install win 10
map --mem (md)+4 (9)
map /ISO/w10.iso (0xff)
map (hd0) (hd1)
map (hd1) (hd0)
map --rehook
write (9) [FiraDisk]\nStartOptions=cdrom,vmem=find:/ISO/w10.iso;\n\0
chainloader (0xff)/bootmgr

title install win 10 x32
map --mem (md)+4 (9)
map /ISO/w10_32.iso (0xff)
map (hd0) (hd1)
map (hd1) (hd0)
map --rehook
write (9) [FiraDisk]\nStartOptions=cdrom,vmem=find:/ISO/w10_32.iso;\n\0
chainloader (0xff)/bootmgr

title install win 11
map --mem (md)+4 (9)
map /ISO/w11.iso (0xff)
map (hd0) (hd1)
map (hd1) (hd0)
map --rehook
write (9) [FiraDisk]\nStartOptions=cdrom,vmem=find:/ISO/w11.iso;\n\0
chainloader (0xff)/bootmgr

title install win 11 24H2
map --mem (md)+4 (9)
map /ISO/w11_24H2.iso (0xff)
map (hd0) (hd1)
map (hd1) (hd0)
map --rehook
write (9) [FiraDisk]\nStartOptions=cdrom,vmem=find:/ISO/w11_24H2.iso;\n\0
chainloader (0xff)/bootmgr

title 
clear

title reboot
reboot

title shutdown
halt
