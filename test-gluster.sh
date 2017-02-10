dd if=/dev/zero of=mnt/zero1 bs=4M count=256 conv=fdatasync &
dd if=/dev/zero of=mnt/zero2 bs=4M count=256 conv=fdatasync &
dd if=/dev/zero of=mnt/zero3 bs=4M count=256 conv=fdatasync &
dd if=/dev/zero of=mnt/zero4 bs=4M count=256 conv=fdatasync &
fg

dd if=/dev/zero of=tmp/zero1 bs=4M count=8 conv=fdatasync &
dd if=/dev/zero of=tmp/zero2 bs=4M count=8 conv=fdatasync &
dd if=/dev/zero of=tmp/zero3 bs=4M count=8 conv=fdatasync &
dd if=/dev/zero of=tmp/zero4 bs=4M count=8 conv=fdatasync