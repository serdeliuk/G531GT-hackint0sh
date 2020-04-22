

# Asus ROG STRIX G531GT DSDT patches

1.OSI.darwin.windows10.patch -- replace "Windows 2015" with "Darwin"<br>
2.battery.patch -- fix battery issues, used with RehabMAN battery kext<br>
3.f7.f8.arrows.als.patch -- fix als sensor, F7,F8 and arrows keys to be used with AsusSMC for brightness control<br>
4.touchpad.i2c.gpio.patch -- fix trackpad to work with gpio pinning with Voodooi2c kext<br>

<br><br>

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://paypal.me/serdeliuk) any donation is highly appreciated!

<br><br>
## Those patches are not compatible with MaciASL!!!
<br><br>

### In order to apply those patches you will need apica tools from here  https://acpica.org/downloads
### To decompile the DSDT.aml and all other acpi tables, you need to run following bash script inside the origin folder saved with F4 in clover

```
#!/bin/bash

iasl -da -dl DSDT.aml

ssdts=`ls -1 ./SSD*`

for ssdt in $ssdts
    do
        echo $s
        iasl -dl $s
done
```

### The resulting DSDT.dsl will have some errors inside, fist lines simillar to the following ones which should be removed from DSDT.dsl 
```
Firmware Error (ACPI): Could not resolve symbol [^PCI0.LPCB.EC0.ACNG], AE_NOT_FOUND (20191018/dswload-496)
Firmware Error (ACPI): Could not resolve symbol [^^PEG0.PEGP.NLIM], AE_NOT_FOUND (20191018/dswload-496)
Firmware Error (ACPI): Could not resolve symbol [^^PEG0.PEGP.TGPU], AE_NOT_FOUND (20191018/dswload-496)
Firmware Error (ACPI): Could not resolve symbol [^PCI0.LPCB.EC0.ACNG], AE_NOT_FOUND (20191018/dswload2-477)
Firmware Error (ACPI): Could not resolve symbol [^^PEG0.PEGP.NLIM], AE_NOT_FOUND (20191018/dswload2-477)
Firmware Error (ACPI): Could not resolve symbol [^^PEG0.PEGP.TGPU], AE_NOT_FOUND (20191018/dswload2-477)
```

### Then apply all patches one by one, patches files should be in the same folder as DSDT.dsl
```
patch -p1 < 1.OSI.darwin.windows10.patch
patch -p1 < 2.battery.patch
patch -p1 < 3.f7.f8.arrows.als.patch
patch -p1 < 4.touchpad.i2c.gpio.patch
```

### Then compile back the DSDT.dsl to DSDT.aml
`iasl -ve DSDT.dsl`
##### -ve   Report only errors (ignore warnings and remarks)



#### You can follow the infos here -- https://www.tonymacx86.com/threads/info-asus-rog-strix-g531gt-hackintosh-mojave-install.287480/
