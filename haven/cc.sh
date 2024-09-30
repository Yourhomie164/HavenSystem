export PREFIX="$HOME/opt/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

echo CLEANING
./clean.sh
echo INSTALLING HEADERS
./headers.sh
echo MAKING ISO
./iso.sh
echo STARTING BUILD
./qemu.sh
