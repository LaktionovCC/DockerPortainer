echo 'deb http://repo.pritunl.com/stable/apt xenial main' > /etc/apt/sources.list.d/pritunl.list
echo "deb http://build.openvpn.net/debian/openvpn/stable xenial main" > /etc/apt/sources.list.d/openvpn-aptrepo.list

apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 8E6DA8B4E158C569

apt-get update -q
apt-get install -y locales iptables wget
locale-gen en_US en_US.UTF-8
dpkg-reconfigure locales
ln -sf /usr/share/zoneinfo/UTC /etc/localtime
apt-get upgrade -y -q
apt-get dist-upgrade -y -q

wget --quiet https://github.com/pritunl/pritunl/releases/download/1.29.2490.44/pritunl_1.29.2490.44-0ubuntu1.xenial_amd64.deb
dpkg -i pritunl_1.29.2490.44-0ubuntu1.xenial_amd64.deb || apt-get -f -y install
rm pritunl_1.29.2490.44-0ubuntu1.xenial_amd64.deb

apt-get --purge autoremove -y wget
apt-get clean
apt-get -y -q autoclean
apt-get -y -q autoremove
rm -rf /tmp/*
