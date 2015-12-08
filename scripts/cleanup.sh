#!/bin/bash -eux

apt-get -y autoremove
apt-get -y clean

# Delete unneeded files.
if [ -d "/home/vagrant" ]; then
  rm -f /home/vagrant/*.sh
fi

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
