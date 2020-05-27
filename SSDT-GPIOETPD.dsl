/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20191018 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-GPIOETPD.aml, Wed May 27 08:46:39 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000313 (787)
 *     Revision         0x0D
 *     Checksum         0x05
 *     OEM ID           "mshack"
 *     OEM Table ID     "GPIOETPD"
 *     OEM Revision     0x00000013 (19)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 13, "mshack", "GPIOETPD", 0x00000013)
{
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (FPD1, FieldUnitObj)
    External (FPH1, FieldUnitObj)
    External (FPL1, FieldUnitObj)
    External (HMD1, FieldUnitObj)
    External (HMH1, FieldUnitObj)
    External (HML1, FieldUnitObj)
    External (M0C1, FieldUnitObj)
    External (M1C1, FieldUnitObj)
    External (PKG1, MethodObj)    // 1 Arguments
    External (PKG3, MethodObj)    // 3 Arguments
    External (SSD1, FieldUnitObj)
    External (SSH1, FieldUnitObj)
    External (SSL1, FieldUnitObj)
    External (TPDI, FieldUnitObj)
    External (TPHI, FieldUnitObj)
    External (TPIF, FieldUnitObj)

    Scope (_SB)
    {
        If (_OSI ("Darwin"))
        {
            Store (Zero, TPIF) /* External reference */
        }
    }

    Scope (_SB.PCI0.I2C1)
    {
        If (_OSI ("Darwin"))
        {
            Method (SSCN, 0, NotSerialized)
            {
                Return (PKG3 (SSH1, SSL1, SSD1))
            }

            Method (FPCN, 0, NotSerialized)
            {
                Return (PKG3 (FPH1, FPL1, FPD1))
            }

            Method (HMCN, 0, NotSerialized)
            {
                Return (PKG3 (HMH1, HML1, HMD1))
            }

            Method (M0D3, 0, NotSerialized)
            {
                Return (PKG1 (M0C1))
            }

            Method (M1D3, 0, NotSerialized)
            {
                Return (PKG1 (M1C1))
            }

            Device (ETPX)
            {
                Name (SBFB, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x004C, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                        0x00, ResourceConsumer, _Y00, Exclusive,
                        )
                })
                Name (SBFG, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0172
                        }
                })
                Name (SBFI, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000005F,
                    }
                })
                CreateWordField (SBFB, \_SB.PCI0.I2C1.ETPX._Y00._ADR, BADR)  // _ADR: Address
                Name (_ADR, One)  // _ADR: Address
                Name (ETPH, Package (0x02)
                {
                    "ELAN1203", 
                    "ELAN1405"
                })
                Name (FTPH, Package (0x05)
                {
                    "FTE1001", 
                    "FTE1200", 
                    "FTE1200", 
                    "FTE1300", 
                    "FTE1300"
                })
                Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                {
                    If (And (TPDI, 0x04))
                    {
                        Store (0x15, BADR) /* \_SB_.PCI0.I2C1.ETPX.BADR */
                        Return (DerefOf (Index (ETPH, TPHI)))
                    }

                    If (And (TPDI, 0x10))
                    {
                        Store (0x15, BADR) /* \_SB_.PCI0.I2C1.ETPX.BADR */
                        Return (DerefOf (Index (FTPH, TPHI)))
                    }

                    Return ("ELAN1000")
                }

                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                    {
                        If (LEqual (Arg2, Zero))
                        {
                            If (LEqual (Arg1, One))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (ConcatenateResTemplate (SBFB, SBFG))
                }
            }
        }
    }
}

