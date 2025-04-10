# sep/09/2022 12:42:05 by RouterOS 6.49.3
# software id = 656T-JDC0
#
# model = RB952Ui-5ac2nD
# serial number = F0DB0EE90365
/interface bridge
add name=bridge1
/interface wireless
set [ find default-name=wlan2 ] band=5ghz-a/n/ac country="united states" \
    ssid=MikroTik wireless-protocol=nv2-nstreme-802.11
/interface list
add name=WAN
add name=LAN
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
add authentication-types=wpa2-psk eap-methods="" mode=dynamic-keys name=\
    profile1 supplicant-identity="" wpa2-pre-shared-key=12345678
/interface wireless
set [ find default-name=wlan1 ] band=2ghz-b/g/n country="united states" \
    disabled=no frequency=2452 mode=bridge security-profile=profile1 ssid=\
    "PROBANDO WIFI Y" wds-default-bridge=bridge1 wds-mode=dynamic \
    wireless-protocol=802.11
/ip hotspot profile
add dns-name=login.wifihotspot.io hotspot-address=192.168.88.1 \
    html-directory=flash/hotspot login-by=https,http-pap name=hsprof1 \
    radius-mac-format=XX-XX-XX-XX-XX-XX ssl-certificate=\
    certificate-login_wifihotspot_io-cert.pem_0 use-radius=yes
/ip hotspot user profile
set [ find default=yes ] mac-cookie-timeout=1d name=administradores
add mac-cookie-timeout=1d name="Tecno16 Raymond" rate-limit=584k/584k
add mac-cookie-timeout=1d name="A30s Raymond" rate-limit=256k/256k
add mac-cookie-timeout=1d name="J2 Raymond" rate-limit=256k/256k
add mac-cookie-timeout=1d name=Netscorpius rate-limit=256k/256k
add mac-cookie-timeout=1d name="Redmi8 Yadira" rate-limit=256k/256k
add mac-cookie-timeout=1d name="Redmi10 Kevin" rate-limit=256k/256k \
    session-timeout=1h30m
add mac-cookie-timeout=1d name=Empresarial5-Hp rate-limit=256k/256k
add mac-cookie-timeout=1d name=Empresarial6-Hp rate-limit=384k/384k
/ip pool
add name=dhcp ranges=192.168.88.10-192.168.88.254
/ip dhcp-server
add address-pool=dhcp disabled=no interface=bridge1 name=dhcp1
/ip hotspot
add address-pool=dhcp addresses-per-mac=1 disabled=no idle-timeout=1m \
    interface=bridge1 keepalive-timeout=1m name=2C-C8-1B-8D-A1-D0 profile=\
    hsprof1
/queue simple
add comment=Zona1 disabled=yes max-limit=128k/128k name=\
    "Tecno16 Raymond (AncBanda)" target=192.168.88.248/32
add disabled=yes max-limit=256k/256k name="Redmi10 Kevin (AncBanda)" target=\
    192.168.88.232/32
add disabled=yes max-limit=128k/128k name="Netscorpius Raymond (AnchBanda)" \
    target=192.168.88.234/32
add disabled=yes max-limit=128k/128k name="A30s Raymond (AncBanda)" target=\
    192.168.88.237/32
add disabled=yes max-limit=128k/128k name="J2 Raymond (AnchBanda)" target=\
    192.168.88.246/32
add disabled=yes max-limit=128k/128k name="Redmi 8A Yadira (AnchBanda)" \
    target=192.168.88.230/32
/interface bridge port
add bridge=bridge1 interface=ether2 trusted=yes
add bridge=bridge1 interface=wlan1 trusted=yes
add bridge=bridge1 interface=ether3 trusted=yes
add bridge=bridge1 interface=ether4 trusted=yes
add bridge=bridge1 interface=ether5 trusted=yes
/interface list member
add interface=ether1 list=WAN
add interface=bridge1 list=LAN
/ip address
add address=192.168.88.1/24 interface=bridge1 network=192.168.88.0
/ip arp
add address=192.168.88.248 comment=\
    "Tecno16 Raymond, Zona 1 \
    \nMac address \
    \n1c:87:e3:38:3e:a0" disabled=yes interface=bridge1 mac-address=\
    1C:87:E3:38:3E:A0
add address=192.168.88.232 comment=\
    "Kevin, Zona 1\
    \nmac address 8C:D9:D6:48:4C:6F" disabled=yes interface=bridge1 \
    mac-address=8C:D9:D6:48:4C:6F
add address=192.168.88.234 comment=\
    "Netscorpius, Zona 1\
    \nMac Address\
    \nd0:df:9a:7e:32:ab" disabled=yes interface=bridge1 mac-address=\
    D0:DF:9A:7E:32:AB
add address=192.168.88.237 comment=\
    "A30s Raymond, Zona 1 \
    \nMac address \
    \n00:fa:21:b2:e2:ce" disabled=yes interface=bridge1 mac-address=\
    00:FA:21:B2:E2:CE
add address=192.168.88.246 comment=\
    "J2 Raymond, Zona 1 \
    \nMac address \
    \n7c:2e:dd:a4:f3:27" disabled=yes interface=bridge1 mac-address=\
    7C:2E:DD:A4:F3:27
add address=192.168.88.230 comment=\
    "Redmi 8A Yadira, Zona 1 \
    \nMac address \
    \n60:ab:67:a5:2e:07" disabled=yes interface=bridge1 mac-address=\
    60:AB:67:A5:2E:07
/ip cloud
set ddns-enabled=yes
/ip dhcp-client
add disabled=no interface=ether1
/ip dhcp-server network
add address=192.168.88.0/24 dns-server=192.168.88.1,8.8.8.8 gateway=\
    192.168.88.1
/ip dns
set allow-remote-requests=yes servers=8.8.8.8,8.8.4.4
/ip firewall filter
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
/ip firewall nat
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
add action=masquerade chain=srcnat out-interface=ether1
add chain=dstnat dst-address=190.120.254.183 protocol=tcp
add action=dst-nat chain=dstnat comment="Conexi\F3n Remota al Mikrotik." \
    dst-address=190.120.254.183 dst-port=8080 protocol=tcp to-addresses=\
    192.168.88.1 to-ports=8080
add action=dst-nat chain=dstnat comment=\
    "Conexi\F3n Remota al Mikrotik al 8291." disabled=yes dst-address=\
    190.120.254.183 dst-port=8291 protocol=tcp to-addresses=192.168.88.1 \
    to-ports=8291
/ip hotspot ip-binding
add address=192.168.88.237 comment="A30s Raymond" disabled=yes to-address=\
    192.168.88.237
add address=192.168.88.246 comment="J2 Raymond" disabled=yes to-address=\
    192.168.88.246 type=bypassed
add address=192.168.88.234 comment="Netscorpius Raymond" disabled=yes \
    to-address=192.168.88.234
add address=192.168.88.230 comment="Redmi 8A Yadira" disabled=yes to-address=\
    192.168.88.230
add address=192.168.88.232 comment="Redmi 10 Kevin" disabled=yes to-address=\
    192.168.88.232
add address=192.168.88.248 comment="Tecno16 Raymond" disabled=yes to-address=\
    192.168.88.248
add address=192.168.88.245 comment=Enpresarial6-Hp disabled=yes to-address=\
    192.168.88.245 type=bypassed
add address=192.168.88.244 comment=Enpresarial5-Hp disabled=yes to-address=\
    192.168.88.244
/ip hotspot user
add name=admin password=112216085001
add address=192.168.88.248 comment="Tecno16 Raymond" disabled=yes name=\
    tecno16 password=123 profile="Tecno16 Raymond"
add address=192.168.88.237 comment="A30s Raymond" disabled=yes name=a30s \
    password=123 profile="A30s Raymond"
add address=192.168.88.246 comment="J2 Raymond" disabled=yes name=j2 \
    password=123 profile="J2 Raymond"
add address=192.168.88.234 comment="Netscorpius Raymond" disabled=yes name=\
    netscorpius password=123 profile=Netscorpius
add address=192.168.88.232 comment="Redmi10 Kevin" disabled=yes name=kevin \
    password=123 profile="Redmi10 Kevin"
add address=192.168.88.230 comment="Redmi 8 Yadira" disabled=yes name=yadira \
    password=123 profile="Redmi8 Yadira"
add comment="Tecno 16 Raymond por Mac Address" disabled=yes name=\
    1C:87:E3:38:3E:A0 profile="Tecno16 Raymond"
add comment="A30 Raymond por Mac Address" disabled=yes name=00:FA:21:B2:E2:CE \
    profile="A30s Raymond"
add comment="J2 Raymond por Mac Address" disabled=yes name=7C:2E:DD:A4:F3:27 \
    profile="J2 Raymond"
add comment="Netscorpius Raymond por Mac Address" disabled=yes name=\
    D0:DF:9A:7E:32:AB profile=Netscorpius
add comment="Redmi 10 Kevin por Mac Address" disabled=yes name=\
    8C:D9:D6:48:4C:6F profile="Redmi10 Kevin"
add comment="Redmi 8 Yadira por Mac Address" disabled=yes name=\
    60:AB:67:A5:2E:07 profile="Redmi8 Yadira"
add address=192.168.88.244 comment="Empresarial5-Hp Raymond" disabled=yes \
    name=empresarial5hp password=123 profile=Empresarial5-Hp
add address=192.168.88.245 comment="Empresarial6-Hp Raymond" disabled=yes \
    name=empresarial6hp password=123 profile=Empresarial6-Hp
/ip hotspot walled-garden
add dst-host=wifihotspot.io
add dst-host=*.starthotspot.com
add dst-host=cdnhotspot.azureedge.net
add dst-host=cdn.starthotspot.com
add dst-host=cdn.wifihotspot.io
add dst-host=*t-msedge.net
add dst-host=static.cloudflareinsights.com
add dst-host=13.92.228.228
add dst-host=13.90.247.200
add dst-host=40.117.190.72
add dst-host=40.121.151.4
add dst-host=standard.t-0001.t-msedge.net
add dst-host=13.107.219.41
/ip service
set www port=8080
set www-ssl certificate=certificate-login_wifihotspot_io-cert.pem_0 disabled=\
    no
/radius
add address=13.92.228.228 secret=secret service=hotspot timeout=9s
add address=13.90.247.200 secret=secret service=hotspot timeout=9s
/system clock
set time-zone-name=America/Caracas
/system identity
set name="MikroTik Casa Yadira RB952Ui"
/tool graphing interface
add
/tool graphing queue
add
/tool graphing resource
add
