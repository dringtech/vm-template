set -e

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

exit 0
