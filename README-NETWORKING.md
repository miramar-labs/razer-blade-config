# Ubuntu 20.04 Networking Notes

DNS configuration seems broken in this release. In order to mesh with my LAN DNS server it is important to configure the netplan settings manually and use a static IP address (see [here](https://www.ricmedia.com/set-custom-dns-servers-on-ubuntu-18-or-20/))
Also note, we only do this for the wired connection - leave WIFI connection as DHCP and don't refer to the LAN DNS there (WIFI is for away from home use)

- Find the ethernet interface name:

      ip a

- Edit /etc/netplan/01-network-manager-all.yaml

      # Let NetworkManager manage all devices on this system
      network:
        version: 2
        renderer: NetworkManager
        ethernets:
          enxa0cec8e81795:
            dhcp4: false
            addresses: [192.168.0.18/24]
            gateway4: 192.168.0.1
            nameservers:
              addresses: [192.168.0.254, 8.8.8.8, 4.4.4.4]
              search: [lan.aaroncody.com]

- Restart netplan:

      sudo netplan restart

- Check status:

      sudo resolvctl status


## ISSUES:

- Sometimes the DNS ordering can get overwritten, so to fix this:

      sudo netplan restart

      (alias=fixdns)

Should restore to:

      sudo resolvctl status
      ...
      Current DNS Server: 192.168.0.254