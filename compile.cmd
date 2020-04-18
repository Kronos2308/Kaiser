@echo off
make -C ..\Kaiser-bootmenu
echo completado
echo %cd%
copy /y Kaiser-bootmenu\output\boot-menu.bin ".\Kaiser\payload.bin"
copy /y Kaiser-bootmenu\output\boot-menu.bin ".\Kaiser\atmosphere\reboot_payload.bin"
%systemroot%\system32\timeout.exe 10
