/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20191018 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-SET-STAS.aml, Wed May 27 10:35:54 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000050 (80)
 *     Revision         0x0D
 *     Checksum         0x8D
 *     OEM ID           "mshack"
 *     OEM Table ID     "SET-STAS"
 *     OEM Revision     0x00000013 (19)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 13, "mshack", "SET-STAS", 0x00000013)
{
    External (STAS, IntObj)

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                Store (One, STAS) /* External reference */
            }
        }
    }
}

