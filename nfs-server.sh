mkdir /sitios
apt -y install nfs-kernel-server
echo ' /sitios   192.168.100.0/24(rw,sync,no_subtree_check)' >>/etc/exports
systemctl restart nfs-server
