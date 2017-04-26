yum install -y bzip2
mount -o loop /home/packer/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
exit 0
