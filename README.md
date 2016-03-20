# rootfs-injector
Inject new files into rootfs easily

####How to use
- place the original rootfs.cpio.gz into the input directory
- place files to inject into newfiles (newfiles have to be considered like another root, you can place files into subdirectories to inject them into these directories)
- run inject.sh
- generated rootfs.cpio.gz will be placed into the output directory