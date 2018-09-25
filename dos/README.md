## Install freedos with qemu
https://www.youtube.com/watch?v=o09FLGmbdp4
1. qemu-img create driver.img 200M
2. qemu-system-i386 -m 32M -drive file=driver.img,media=disk,format=raw -drive file=FD12CD.iso,media=cdrom -boot order=d
