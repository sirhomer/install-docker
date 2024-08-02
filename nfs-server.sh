mkdir /sitios
apt -y install nfs-kernel-server
echo ' /sitios 192.168.1.0/24(rw,sync,no_subtree_check,no_root_squash,anonuid=1000,anongid=1000)' >>/etc/exports
systemctl restart nfs-server
