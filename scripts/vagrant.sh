/usr/sbin/groupadd -g 501 vagrant
/usr/sbin/useradd vagrant -u 501 -g vagrant -G wheel
echo "vagrant"|passwd --stdin vagrant
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

date > /etc/vagrant_box_build_time

SSH_DIR=/home/vagrant/.ssh
AUTH_KEYS=${SSH_DIR}/authorized_keys

mkdir -pm 700 ${SSH_DIR}
curl https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o ${AUTH_KEYS}
chmod 0600 ${AUTH_KEYS}
chown -R vagrant:vagrant ${SSH_DIR}
exit 0
