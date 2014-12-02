#!/sbin/sh
#
# check if a linear config backup exists
#

case "$1" in
restore)
  if [ -f /sdcard/.linear.backup ]; then
    cp /sdcard/.linear.backup /system/etc/linear.conf;
  fi
  ;;
  *)
    exit 1
esac

exit 0
