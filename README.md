# Arch-Configs
Contains configs of various softwares like i3, nvim etc.

## ACPI (For some special Fn key combination handler)
- Copy the acpi/handler.sh to /etc/acpi/handler.sh
- Extra handling
    - Brightness up
    - Brightness down
    - Volume up
    - Volume down
    - Mute
## Connecting to University WIFI OR eduroam
- They generall use EAP-PEAP with MSCHAPv2 for authentication
- Use the following command to create a new connection with nmcli
    - ```
        nmcli connection add type wifi ifname <interface-name> con-name <connection-name> ssid <ssid>
        ```
- Then use the following command to change the configuration for this above connection you just created
```
nmcli connection edit id <connection-name>
```
Then set the following options
```
set 802-1x.eap peap
set 802-1x.phase2-auth mschapv2
set 802-1x.identity <username>
set 802-1x.password <password>
set 802-1x.wifi-sec.key-mgmt wpa-eap
save
activate
```


