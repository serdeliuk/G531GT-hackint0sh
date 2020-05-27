/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20191018 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-BAT0FIX.aml, Wed May 27 10:30:14 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000F96 (3990)
 *     Revision         0x0D
 *     Checksum         0x19
 *     OEM ID           "mshack"
 *     OEM Table ID     "BAT0FIX"
 *     OEM Revision     0x00000013 (19)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 13, "mshack", "BAT0FIX", 0x00000013)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_._BIF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.BAT0, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.NBIX, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.PBIF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.BATP, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.BIXT, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.DAT0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.ECAV, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GBTT, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.MUEC, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_.RCBT, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.RDBL, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.RDBT, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.RDQK, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.RDWD, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.SBBY, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.SDBT, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.SWTC, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.WRBL, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.WRBT, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.WRQK, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.WRWD, IntObj)
    External (BRAH, IntObj)
    External (BSLF, IntObj)
    External (CMUT, MutexObj)
    External (DAT0, IntObj)
    External (NBIX, IntObj)
    External (SBBY, IntObj)

    If (_OSI ("Darwin"))
    {
        OperationRegion (ECOR, EmbeddedControl, Zero, 0xFF)
        Field (ECOR, ByteAcc, Lock, Preserve)
        {
            Offset (0x04), 
            CMD1,   8, 
            CDT1,   8, 
            CDT2,   8, 
            CDT3,   8, 
            Offset (0x80), 
            Offset (0x81), 
            Offset (0x82), 
            Offset (0x83), 
            EB0R,   8, 
            EB1R,   8, 
            EPWF,   8, 
            Offset (0x87), 
            Offset (0x88), 
            Offset (0x89), 
            Offset (0x93), 
            TAH0,   16, 
            TAH1,   16, 
            TSTP,   8, 
            Offset (0x9C), 
            CDT4,   8, 
            CDT5,   8, 
            Offset (0xA0), 
            Offset (0xA1), 
            Offset (0xA2), 
            Offset (0xA3), 
            EACT,   8, 
            TH1R,   8, 
            TH1L,   8, 
            TH0R,   8, 
            TH0L,   8, 
            Offset (0xB0), 
            B0PN,   16, 
            Offset (0xB4), 
            Offset (0xB6), 
            Offset (0xB8), 
            Offset (0xBA), 
            Offset (0xBC), 
            Offset (0xBE), 
            B0TM,   16, 
            B0C1,   16, 
            B0C2,   16, 
            BC00,   8, 
            BC01,   8, 
            B0C4,   16, 
            Offset (0xD0), 
            B1PN,   16, 
            Offset (0xD4), 
            Offset (0xD6), 
            Offset (0xD8), 
            Offset (0xDA), 
            Offset (0xDC), 
            Offset (0xDE), 
            B1TM,   16, 
            B1C1,   16, 
            B1C2,   16, 
            B1C3,   16, 
            B1C4,   16, 
            Offset (0xF0), 
            Offset (0xF2), 
            Offset (0xF4), 
            BS00,   8, 
            BS01,   8, 
            Offset (0xF8), 
            Offset (0xFA), 
            Offset (0xFC), 
            SN00,   8, 
            SN01,   8
        }

        Name (SMBF, Zero)
        OperationRegion (SMBX, EmbeddedControl, 0x18, 0x28)
        Field (SMBX, ByteAcc, NoLock, Preserve)
        {
            PRTC,   8, 
            SSTS,   5, 
                ,   1, 
            ALFG,   1, 
            CDFG,   1, 
            ADDR,   8, 
            CMDB,   8, 
            BDAY,   256, 
            BCNT,   8, 
                ,   1, 
            ALAD,   7, 
            ALD0,   8, 
            ALD1,   8
        }

        Field (SMBX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            DT00,   8, 
            DT01,   8
        }

        OperationRegion (BRAM, SystemIO, 0x0382, 0x02)
        Field (BRAM, ByteAcc, Lock, Preserve)
        {
            BRAI,   8, 
            BRAD,   8
        }

        IndexField (BRAI, BRAD, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            CCI0,   8, 
            CCI1,   8, 
            CCI2,   8, 
            CCI3,   8, 
            CTL0,   8, 
            CTL1,   8, 
            CTL2,   8, 
            CTL3,   8, 
            CTL4,   8, 
            CTL5,   8, 
            CTL6,   8, 
            CTL7,   8, 
            MGI0,   8, 
            MGI1,   8, 
            MGI2,   8, 
            MGI3,   8, 
            MGI4,   8, 
            MGI5,   8, 
            MGI6,   8, 
            MGI7,   8, 
            MGI8,   8, 
            MGI9,   8, 
            MGIA,   8, 
            MGIB,   8, 
            MGIC,   8, 
            MGID,   8, 
            MGIE,   8, 
            MGIF,   8, 
            MGO0,   8, 
            MGO1,   8, 
            MGO2,   8, 
            MGO3,   8, 
            MGO4,   8, 
            MGO5,   8, 
            MGO6,   8, 
            MGO7,   8, 
            MGO8,   8, 
            MGO9,   8, 
            MGOA,   8, 
            MGOB,   8, 
            MGOC,   8, 
            MGOD,   8, 
            MGOE,   8, 
            MGOF,   8, 
            Offset (0x40), 
            BRD1,   8, 
            BRD2,   8, 
            BRD3,   8, 
            BRD4,   8, 
            Offset (0x6E), 
            BFLB,   8, 
            BCLB,   8, 
            Offset (0x8E), 
            CNTD,   8, 
            Offset (0x90), 
            EPWS,   8, 
            EB0S,   8, 
            EB1S,   8, 
            EB0T,   8, 
            EB1T,   8, 
            Offset (0x98), 
            ECPU,   8, 
            ECRT,   8, 
            EPSV,   8, 
            PDST,   8, 
            THL0,   8, 
            THH0,   8, 
            THL1,   8, 
            THH1,   8, 
            B0V0,   8, 
            B0V1,   8, 
            B0R0,   8, 
            B0R1,   8, 
            B0F0,   8, 
            B0F1,   8, 
            B0M0,   8, 
            B0M1,   8, 
            B0S0,   8, 
            B0S1,   8, 
            BCC0,   8, 
            BCC1,   8, 
            BD0A,   8, 
            BD0B,   8, 
            B0D0,   8, 
            B0D1,   8, 
            B1V0,   8, 
            B1V1,   8, 
            B1R0,   8, 
            B1R1,   8, 
            B1F0,   8, 
            B1F1,   8, 
            B1M0,   8, 
            B1M1,   8, 
            B1S0,   8, 
            B1S1,   8, 
            CC00,   8, 
            CC01,   8, 
            B1D0,   8, 
            B1D1,   8, 
            BDV0,   8, 
            BDV1,   8
        }

        Scope (_SB.PCI0.LPCB.EC0)
        {
            Device (BAT0)
            {
                Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
                {
                    If (LNot (BATP (Zero)))
                    {
                        Return (NBIX) /* External reference */
                    }

                    If (LEqual (GBTT (Zero), 0xFF))
                    {
                        Return (NBIX) /* External reference */
                    }

                    _BIF ()
                    Store (DerefOf (Index (PBIF (), Zero)), Index (BIXT (), One))
                    Store (DerefOf (Index (PBIF (), One)), Index (BIXT (), 0x02))
                    Store (DerefOf (Index (PBIF (), 0x02)), Index (BIXT (), 0x03))
                    Store (DerefOf (Index (PBIF (), 0x03)), Index (BIXT (), 0x04))
                    Store (DerefOf (Index (PBIF (), 0x04)), Index (BIXT (), 0x05))
                    Store (DerefOf (Index (PBIF (), 0x05)), Index (BIXT (), 0x06))
                    Store (DerefOf (Index (PBIF (), 0x06)), Index (BIXT (), 0x07))
                    Store (DerefOf (Index (PBIF (), 0x07)), Index (BIXT (), 0x0E))
                    Store (DerefOf (Index (PBIF (), 0x08)), Index (BIXT (), 0x0F))
                    Store (DerefOf (Index (PBIF (), 0x09)), Index (BIXT (), 0x10))
                    Store (DerefOf (Index (PBIF (), 0x0A)), Index (BIXT (), 0x11))
                    Store (DerefOf (Index (PBIF (), 0x0B)), Index (BIXT (), 0x12))
                    Store (DerefOf (Index (PBIF (), 0x0C)), Index (BIXT (), 0x13))
                    If (LEqual (DerefOf (Index (BIXT (), One)), One))
                    {
                        Store (Zero, Index (BIXT (), One))
                        Store (DerefOf (Index (BIXT (), 0x05)), Local0)
                        Multiply (DerefOf (Index (BIXT (), 0x02)), Local0, Index (BIXT (), 0x02))
                        Multiply (DerefOf (Index (BIXT (), 0x03)), Local0, Index (BIXT (), 0x03))
                        Multiply (DerefOf (Index (BIXT (), 0x06)), Local0, Index (BIXT (), 0x06))
                        Multiply (DerefOf (Index (BIXT (), 0x07)), Local0, Index (BIXT (), 0x07))
                        Multiply (DerefOf (Index (BIXT (), 0x0E)), Local0, Index (BIXT (), 0x0E))
                        Multiply (DerefOf (Index (BIXT (), 0x0F)), Local0, Index (BIXT (), 0x0F))
                        Divide (DerefOf (Index (BIXT (), 0x02)), 0x03E8, Local0, Index (BIXT (), 0x02))
                        Divide (DerefOf (Index (BIXT (), 0x03)), 0x03E8, Local0, Index (BIXT (), 0x03))
                        Divide (DerefOf (Index (BIXT (), 0x06)), 0x03E8, Local0, Index (BIXT (), 0x06))
                        Divide (DerefOf (Index (BIXT (), 0x07)), 0x03E8, Local0, Index (BIXT (), 0x07))
                        Divide (DerefOf (Index (BIXT (), 0x0E)), 0x03E8, Local0, Index (BIXT (), 0x0E))
                        Divide (DerefOf (Index (BIXT (), 0x0F)), 0x03E8, Local0, Index (BIXT (), 0x0F))
                    }

                    Store (B1B2 (BC00, BC01), Index (BIXT (), 0x08))
                    Store (0x0001869F, Index (BIXT (), 0x09))
                    Return (BIXT ())
                }
            }

            Method (BIF0, 0, NotSerialized)
            {
                If (ECAV ())
                {
                    Acquire (CMUT, 0xFFFF)
                    If (BSLF)
                    {
                        Store (0xC9, BRAH) /* External reference */
                        Store (B1B2 (B1M0, B1M1), Local0)
                    }
                    Else
                    {
                        Store (0xC9, BRAH) /* External reference */
                        Store (B1B2 (B0M0, B0M1), Local0)
                    }

                    Release (CMUT)
                    If (LNotEqual (Local0, 0xFFFF))
                    {
                        ShiftRight (Local0, 0x0F, Local1)
                        And (Local1, One, Local1)
                        XOr (Local1, One, Local0)
                    }
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Return (Local0)
            }

            Method (BIF1, 0, NotSerialized)
            {
                If (ECAV ())
                {
                    Acquire (CMUT, 0xFFFF)
                    If (BSLF)
                    {
                        Store (0xC9, BRAH) /* External reference */
                        Store (B1B2 (B1D0, B1D1), Local0)
                    }
                    Else
                    {
                        Store (0xC9, BRAH) /* External reference */
                        Store (B1B2 (B0D0, B0D1), Local0)
                    }

                    Release (CMUT)
                    And (Local0, 0xFFFF, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Return (Local0)
            }

            Method (BIF2, 0, NotSerialized)
            {
                If (ECAV ())
                {
                    Acquire (CMUT, 0xFFFF)
                    If (BSLF)
                    {
                        Store (0xC9, BRAH) /* External reference */
                        Store (B1B2 (B1F0, B1F1), Local0)
                    }
                    Else
                    {
                        Store (0xC9, BRAH) /* External reference */
                        Store (B1B2 (B0F0, B0F1), Local0)
                    }

                    Release (CMUT)
                    And (Local0, 0xFFFF, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Return (Local0)
            }

            Method (BIF3, 0, NotSerialized)
            {
                If (ECAV ())
                {
                    Acquire (CMUT, 0xFFFF)
                    If (BSLF)
                    {
                        Store (0xC9, BRAH) /* External reference */
                        Store (B1B2 (B1M0, B1M1), Local0)
                    }
                    Else
                    {
                        Store (0xC9, BRAH) /* External reference */
                        Store (B1B2 (B0M0, B0M1), Local0)
                    }

                    Release (CMUT)
                    If (LNotEqual (Local0, 0xFFFF))
                    {
                        ShiftRight (Local0, 0x09, Local0)
                        And (Local0, One, Local0)
                        XOr (Local0, One, Local0)
                    }
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Return (Local0)
            }

            Method (BIF4, 0, NotSerialized)
            {
                If (ECAV ())
                {
                    Acquire (CMUT, 0xFFFF)
                    If (BSLF)
                    {
                        Store (0xC9, BRAH) /* External reference */
                        Store (B1B2 (BDV0, BDV1), Local0)
                    }
                    Else
                    {
                        Store (0xC9, BRAH) /* External reference */
                        Store (B1B2 (B0D0, B0D1), Local0)
                    }

                    Release (CMUT)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Return (Local0)
            }

            Method (BIF9, 0, NotSerialized)
            {
                Name (BSTR, Buffer (0x20){})
                Name (DDDD, "ASUS Battery")
                Store (DDDD, BSTR) /* \_SB_.PCI0.LPCB.EC0_.BIF9.BSTR */
                Return (BSTR) /* \_SB_.PCI0.LPCB.EC0_.BIF9.BSTR */
            }

            Method (BIFA, 0, NotSerialized)
            {
                If (ECAV ())
                {
                    If (BSLF)
                    {
                        Store (B1B2 (BS00, BS01), Local0)
                    }
                    Else
                    {
                        Store (B1B2 (SN00, SN01), Local0)
                    }
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Return (Local0)
            }

            Method (BSTS, 0, NotSerialized)
            {
                Acquire (CMUT, 0xFFFF)
                If (BSLF)
                {
                    Store (0xC9, BRAH) /* External reference */
                    Store (B1B2 (B1S0, B1S1), Local0)
                }
                Else
                {
                    Store (0xC9, BRAH) /* External reference */
                    Store (B1B2 (B0S0, B0S1), Local0)
                }

                Release (CMUT)
                Return (Local0)
            }

            Method (BCRT, 0, NotSerialized)
            {
                Acquire (CMUT, 0xFFFF)
                If (BSLF)
                {
                    Store (0xC9, BRAH) /* External reference */
                    Store (B1B2 (CC00, CC01), Local0)
                }
                Else
                {
                    Store (0xC9, BRAH) /* External reference */
                    Store (B1B2 (BCC0, BCC1), Local0)
                }

                Release (CMUT)
                Return (Local0)
            }

            Method (BRCP, 0, NotSerialized)
            {
                Acquire (CMUT, 0xFFFF)
                If (BSLF)
                {
                    Store (0xC9, BRAH) /* External reference */
                    Store (B1B2 (B1R0, B1R1), Local0)
                }
                Else
                {
                    Store (0xC9, BRAH) /* External reference */
                    Store (B1B2 (B0R0, B0R1), Local0)
                }

                Release (CMUT)
                If (LEqual (Local0, 0xFFFF))
                {
                    Store (Ones, Local0)
                }

                Return (Local0)
            }

            Method (BVOT, 0, NotSerialized)
            {
                Acquire (CMUT, 0xFFFF)
                If (BSLF)
                {
                    Store (0xC9, BRAH) /* External reference */
                    Store (B1B2 (B1V0, B1V1), Local0)
                }
                Else
                {
                    Store (0xC9, BRAH) /* External reference */
                    Store (B1B2 (B0V0, B0V1), Local0)
                }

                Release (CMUT)
                Return (Local0)
            }

            Method (SMBW, 5, Serialized)
            {
                Store (Package (0x01)
                    {
                        0x07
                    }, Local0)
                If (LNot (ECAV ()))
                {
                    Return (Local0)
                }

                If (LNotEqual (Arg0, WRBL))
                {
                    If (LNotEqual (Arg0, WRWD))
                    {
                        If (LNotEqual (Arg0, WRBT))
                        {
                            If (LNotEqual (Arg0, SDBT))
                            {
                                If (LNotEqual (Arg0, WRQK))
                                {
                                    Return (Local0)
                                }
                            }
                        }
                    }
                }

                Acquire (MUEC, 0xFFFF)
                Store (PRTC, Local1)
                Store (Zero, Local2)
                While (LNotEqual (Local1, Zero))
                {
                    Stall (0x0A)
                    Increment (Local2)
                    If (LGreater (Local2, 0x03E8))
                    {
                        Store (SBBY, Index (Local0, Zero))
                        Store (Zero, Local1)
                    }
                    Else
                    {
                        Store (PRTC, Local1)
                    }
                }

                If (LLessEqual (Local2, 0x03E8))
                {
                    WECB (0x1C, 0x0100, Zero)
                    ShiftLeft (Arg1, One, Local3)
                    Store (Local3, ADDR) /* \ADDR */
                    If (LNotEqual (Arg0, WRQK))
                    {
                        If (LNotEqual (Arg0, SDBT))
                        {
                            Store (Arg2, CMDB) /* \CMDB */
                        }
                    }

                    If (LEqual (Arg0, WRBL))
                    {
                        Store (Arg3, BCNT) /* \BCNT */
                        WECB (0x1C, 0x0100, Arg4)
                    }

                    If (LEqual (Arg0, WRWD))
                    {
                        Store (Arg4, B1B2 (DT00, DT01))
                    }

                    If (LEqual (Arg0, WRBT))
                    {
                        Store (Arg4, DAT0) /* External reference */
                    }

                    If (LEqual (Arg0, SDBT))
                    {
                        Store (Arg4, DAT0) /* External reference */
                    }

                    Store (Arg0, PRTC) /* \PRTC */
                    Store (SWTC (Arg0), Index (Local0, Zero))
                }

                Release (MUEC)
                Return (Local0)
            }

            Method (SMBR, 3, Serialized)
            {
                Store (Package (0x03)
                    {
                        0x07, 
                        Zero, 
                        Zero
                    }, Local0)
                If (LNot (ECAV ()))
                {
                    Return (Local0)
                }

                If (LNotEqual (Arg0, RDBL))
                {
                    If (LNotEqual (Arg0, RDWD))
                    {
                        If (LNotEqual (Arg0, RDBT))
                        {
                            If (LNotEqual (Arg0, RCBT))
                            {
                                If (LNotEqual (Arg0, RDQK))
                                {
                                    Return (Local0)
                                }
                            }
                        }
                    }
                }

                Acquire (MUEC, 0xFFFF)
                Store (PRTC, Local1)
                Store (Zero, Local2)
                While (LNotEqual (Local1, Zero))
                {
                    Stall (0x0A)
                    Increment (Local2)
                    If (LGreater (Local2, 0x03E8))
                    {
                        Store (SBBY, Index (Local0, Zero))
                        Store (Zero, Local1)
                    }
                    Else
                    {
                        Store (PRTC, Local1)
                    }
                }

                If (LLessEqual (Local2, 0x03E8))
                {
                    ShiftLeft (Arg1, One, Local3)
                    Or (Local3, One, Local3)
                    Store (Local3, ADDR) /* \ADDR */
                    If (LNotEqual (Arg0, RDQK))
                    {
                        If (LNotEqual (Arg0, RCBT))
                        {
                            Store (Arg2, CMDB) /* \CMDB */
                        }
                    }

                    WECB (0x1C, 0x0100, Zero)
                    Store (Arg0, PRTC) /* \PRTC */
                    Store (SWTC (Arg0), Index (Local0, Zero))
                    If (LEqual (DerefOf (Index (Local0, Zero)), Zero))
                    {
                        If (LEqual (Arg0, RDBL))
                        {
                            Store (BCNT, Index (Local0, One))
                            Store (RECB (0x1C, 0x0100), Index (Local0, 0x02))
                        }

                        If (LEqual (Arg0, RDWD))
                        {
                            Store (0x02, Index (Local0, One))
                            Store (B1B2 (DT00, DT01), Index (Local0, 0x02))
                        }

                        If (LEqual (Arg0, RDBT))
                        {
                            Store (One, Index (Local0, One))
                            Store (DAT0, Index (Local0, 0x02))
                        }

                        If (LEqual (Arg0, RCBT))
                        {
                            Store (One, Index (Local0, One))
                            Store (DAT0, Index (Local0, 0x02))
                        }
                    }
                }

                Release (MUEC)
                Return (Local0)
            }
        }

        Method (B1B2, 2, NotSerialized)
        {
            Return (Or (Arg0, ShiftLeft (Arg1, 0x08)))
        }

        Scope (_SB.PCI0.LPCB)
        {
            Method (RE1B, 1, NotSerialized)
            {
                OperationRegion (ERAM, EmbeddedControl, Arg0, One)
                Field (ERAM, ByteAcc, NoLock, Preserve)
                {
                    BYTE,   8
                }

                Return (BYTE) /* \_SB_.PCI0.LPCB.RE1B.BYTE */
            }

            Method (RECB, 2, Serialized)
            {
                ShiftRight (Arg1, 0x03, Arg1)
                Name (TEMP, Buffer (Arg1){})
                Add (Arg0, Arg1, Arg1)
                Store (Zero, Local0)
                While (LLess (Arg0, Arg1))
                {
                    Store (RE1B (Arg0), Index (TEMP, Local0))
                    Increment (Arg0)
                    Increment (Local0)
                }

                Return (TEMP) /* \_SB_.PCI0.LPCB.RECB.TEMP */
            }

            Method (WE1B, 2, NotSerialized)
            {
                OperationRegion (ERAM, EmbeddedControl, Arg0, One)
                Field (ERAM, ByteAcc, NoLock, Preserve)
                {
                    BYTE,   8
                }

                Store (Arg1, BYTE) /* \_SB_.PCI0.LPCB.WE1B.BYTE */
            }

            Method (WECB, 3, Serialized)
            {
                ShiftRight (Arg1, 0x03, Arg1)
                Name (TEMP, Buffer (Arg1){})
                Store (Arg2, TEMP) /* \_SB_.PCI0.LPCB.WECB.TEMP */
                Add (Arg0, Arg1, Arg1)
                Store (Zero, Local0)
                While (LLess (Arg0, Arg1))
                {
                    WE1B (Arg0, DerefOf (Index (TEMP, Local0)))
                    Increment (Arg0)
                    Increment (Local0)
                }
            }
        }
    }
}

