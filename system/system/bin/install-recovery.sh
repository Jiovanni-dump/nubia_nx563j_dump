#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:21841196:065895ac6c435e54da1c3acfca071a2d84f6c63f; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:14132520:a4f4f5957405c8eb2c05644d957172f09982bfd8 EMMC:/dev/block/bootdevice/by-name/recovery 065895ac6c435e54da1c3acfca071a2d84f6c63f 21841196 a4f4f5957405c8eb2c05644d957172f09982bfd8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
