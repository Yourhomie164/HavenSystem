set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/haven.kernel isodir/boot/haven.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "Haven" {
	multiboot /boot/haven.kernel
}
EOF
grub-mkrescue -o haven.iso isodir
