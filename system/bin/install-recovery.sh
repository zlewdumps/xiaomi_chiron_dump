#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:25228622:65093c3cacdd33cdba416cf2f1e1f9092d39276c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:19256650:723163285cc2f8f0e21c95bbeabe17d4c77a5933 EMMC:/dev/block/bootdevice/by-name/recovery 65093c3cacdd33cdba416cf2f1e1f9092d39276c 25228622 723163285cc2f8f0e21c95bbeabe17d4c77a5933:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
