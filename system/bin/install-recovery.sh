#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery:19420394:d27ba95d220da61b8cf681678c37024b0ebc4d04; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/boot:12383462:0729de7f1880de57cf713c84089cd10f98c256b1 EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery d27ba95d220da61b8cf681678c37024b0ebc4d04 19420394 0729de7f1880de57cf713c84089cd10f98c256b1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
