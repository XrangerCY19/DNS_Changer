@echo off
title DNS_Changer_by_Xranger

FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) echo .....Run As Administrator.....


netsh interface ip set dns "Wi-Fi" dhcp


netsh interface ipv4 show config


pause