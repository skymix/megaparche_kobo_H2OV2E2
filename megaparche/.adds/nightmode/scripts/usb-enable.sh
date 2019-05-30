#! /bin/sh

lsmod | grep -q g_file_storage && exit 1

DISK=/dev/mmcblk
PARTITIONS="${DISK}0p3"

[ -e "${DISK}1p1" ] && PARTITIONS="${PARTITIONS},${DISK}1p1"

sync
echo 3 > /proc/sys/vm/drop_caches

for name in onboard sd ; do
	DIR=/mnt/"$name"
	if grep -q "$DIR" /proc/mounts ; then
		umount "$DIR" || umount -l "$DIR"
	fi
done

VENDOR_ID=0x2237
PRODUCT_ID=${PRODUCT_ID:-"0x6666"}
FIRMWARE_VERSION=${FIRMWARE_VERSION:-"9.8.76543"}
SERIAL_NUMBER=${SERIAL_NUMBER:-"N666999666999"}

GADGETS=/drivers/${PLATFORM}/usb/gadget

case "$PLATFORM" in
	mx6[su]ll-ntx)
		MODULE_PARAMETERS="idVendor=${VENDOR_ID} idProduct=${PRODUCT_ID} iManufacturer=Kobo iProduct=eReader-${FIRMWARE_VERSION} iSerialNumber=${SERIAL_NUMBER}"
		insmod "$GADGETS"/configfs.ko
		insmod "$GADGETS"/libcomposite.ko
		insmod "$GADGETS"/usb_f_mass_storage.ko
		;;
	*)
		MODULE_PARAMETERS="vendor=${VENDOR_ID} product=${PRODUCT_ID} vendor_id=Kobo product_id=eReader-${FIRMWARE_VERSION} SN=${SERIAL_NUMBER}"
		if [ -e "$GADGETS"/arcotg_udc.ko ] ; then
			insmod "$GADGETS"/arcotg_udc.ko
			sleep 2
		fi
		;;
esac

# shellcheck disable=SC2086
insmod "$GADGETS"/g_file_storage.ko file="$PARTITIONS" stall=1 removable=1 $MODULE_PARAMETERS

sleep 1
