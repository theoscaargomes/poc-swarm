echo "global_defs {
   notification_email {
     suporte.foz@gmail.com
   }
   notification_email_from suporte.foz@gmail.com
   smtp_server 127.0.0.1
   smtp_connect_timeout 30
   router_id LVS_DEVEL
   vrrp_skip_check_adv_addr
   vrrp_strict
   vrrp_garp_interval 0
   vrrp_gna_interval 0
}
vrrp_instance VI_1 {
    state BACKUP
    interface enp0s8
    virtual_router_id 51
    priority 100
    advert_int 1
    authentication {
        auth_type PASS
        auth_pass 1111
    }
    virtual_ipaddress {
        192.168.56.10/24
    }
}" >> /etc/keepalived/keepalived.conf && systemctl start keepalived && echo "SLAVE2!!" >> /var/www/html/index.nginx-debian.html
