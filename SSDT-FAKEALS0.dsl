/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20191018 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-FAKEALS0.aml, Wed May 27 09:26:15 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000074 (116)
 *     Revision         0x0D
 *     Checksum         0xEC
 *     OEM ID           "mshack"
 *     OEM Table ID     "FAKEALS0"
 *     OEM Revision     0x00000013 (19)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 13, "mshack", "FAKEALS0", 0x00000013)
{
    Scope (_SB)
    {
        If (_OSI ("Darwin"))
        {
            Device (ALS0)
            {
                Name (_HID, "ACPI0008" /* Ambient Light Sensor Device */)  // _HID: Hardware ID
                Name (_CID, "smc-als")  // _CID: Compatible ID
                Name (_ALI, 0x96)  // _ALI: Ambient Light Illuminance
                Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
                {
                    Package (0x02)
                    {
                        0x64, 
                        0x96
                    }
                })
            }
        }
    }
}

