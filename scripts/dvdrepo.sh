mkdir /mnt/dvd
mount -o loop,ro /dev/cdrom /mnt/dvd

cat - <<REPO > /etc/yum.repos.d/temp_local.repo
[temp_dvd]
mediaid=$(head -1 /mnt/dvd/.discinfo)
name=Local Repository
baseurl=file:///mnt/dvd
enabled=1
gpgcheck=0
REPO
