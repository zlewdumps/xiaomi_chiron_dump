#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:22914382:3bc9c56fa372b61ad3748ea7de4d49ff053a2f37; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:20694346:2fa4931953f03d597a823fe5b48dd21ca2a8afd2 EMMC:/dev/block/bootdevice/by-name/recovery 3bc9c56fa372b61ad3748ea7de4d49ff053a2f37 22914382 2fa4931953f03d597a823fe5b48dd21ca2a8afd2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
