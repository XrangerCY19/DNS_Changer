@echo off
title DNS_Changer_by_Xranger

FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) echo .....Run As Administrator.....



netsh interface ipv4 set dns name="Wi-Fi" static 1.1.1.1
netsh interface ipv4 add dns name="Wi-Fi" 1.0.0.1 index=2

netsh interface ipv6 set dnsservers "Wi-Fi" static 2606:4700:4700::1111 primary
netsh interface ipv6 add dnsservers "Wi-Fi" 2606:4700:4700::1001 index=2

netsh interface ipv4 show config

pause