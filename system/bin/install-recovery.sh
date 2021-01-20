#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29797710:91c28bd09d32972a17d1349c86bd6d00b2257343; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23571786:6b97c3405e6d7db48c97939533f971bed9c794c6 EMMC:/dev/block/bootdevice/by-name/recovery 91c28bd09d32972a17d1349c86bd6d00b2257343 29797710 6b97c3405e6d7db48c97939533f971bed9c794c6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
