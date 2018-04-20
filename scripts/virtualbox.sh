set -e

yum --assumeyes --enablerepo=temp_dvd install bzip2 gcc make gcc-c++ kernel-devel-`uname -r` perl tar
mount -o loop /home/packer/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
exit 0
