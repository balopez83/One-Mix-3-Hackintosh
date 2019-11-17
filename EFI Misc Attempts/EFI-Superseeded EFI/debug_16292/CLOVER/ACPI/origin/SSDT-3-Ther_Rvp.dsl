/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3-Ther_Rvp.aml, Thu Nov 22 14:56:32 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000902 (2306)
 *     Revision         0x02
 *     Checksum         0xCD
 *     OEM ID           "INTEL "
 *     OEM Table ID     "Ther_Rvp"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "Ther_Rvp", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_PR_.AAC0, UnknownObj)    // (from opcode)
    External (_PR_.ACRT, UnknownObj)    // (from opcode)
    External (_PR_.APSV, UnknownObj)    // (from opcode)
    External (_PR_.DTS1, UnknownObj)    // (from opcode)
    External (_PR_.DTS2, UnknownObj)    // (from opcode)
    External (_PR_.DTS3, UnknownObj)    // (from opcode)
    External (_PR_.DTS4, UnknownObj)    // (from opcode)
    External (_PR_.DTSE, UnknownObj)    // (from opcode)
    External (_PR_.PDTS, UnknownObj)    // (from opcode)
    External (_PR_.PKGA, UnknownObj)    // (from opcode)
    External (_PR_.PR00, UnknownObj)    // (from opcode)
    External (_PR_.PR01, UnknownObj)    // (from opcode)
    External (_PR_.PR02, UnknownObj)    // (from opcode)
    External (_PR_.PR03, UnknownObj)    // (from opcode)
    External (_PR_.PR04, UnknownObj)    // (from opcode)
    External (_PR_.PR05, UnknownObj)    // (from opcode)
    External (_PR_.PR06, UnknownObj)    // (from opcode)
    External (_PR_.PR07, UnknownObj)    // (from opcode)
    External (_PR_.PR08, UnknownObj)    // (from opcode)
    External (_PR_.PR09, UnknownObj)    // (from opcode)
    External (_PR_.PR10, UnknownObj)    // (from opcode)
    External (_PR_.PR11, UnknownObj)    // (from opcode)
    External (_PR_.PR12, UnknownObj)    // (from opcode)
    External (_PR_.PR13, UnknownObj)    // (from opcode)
    External (_PR_.PR14, UnknownObj)    // (from opcode)
    External (_PR_.PR15, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.PECH, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.PECL, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.PENV, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.PLMX, FieldUnitObj)    // (from opcode)
    External (AC0F, IntObj)    // (from opcode)
    External (AC1F, IntObj)    // (from opcode)
    External (ACT1, IntObj)    // (from opcode)
    External (ACTT, IntObj)    // (from opcode)
    External (CRTT, IntObj)    // (from opcode)
    External (CTYP, IntObj)    // (from opcode)
    External (PSVT, IntObj)    // (from opcode)
    External (TC1V, IntObj)    // (from opcode)
    External (TC2V, IntObj)    // (from opcode)
    External (TCNT, IntObj)    // (from opcode)
    External (TSPV, IntObj)    // (from opcode)
    External (VFN0, IntObj)    // (from opcode)
    External (VFN1, IntObj)    // (from opcode)
    External (VFN2, IntObj)    // (from opcode)
    External (VFN3, IntObj)    // (from opcode)
    External (VFN4, IntObj)    // (from opcode)

    Scope (\_TZ)
    {
        Name (ETMD, One)
        Event (FCET)
        Name (FCRN, Zero)
        Mutex (FCMT, 0x00)
        Name (CVF0, Zero)
        Name (CVF1, Zero)
        Name (CVF2, Zero)
        Name (CVF3, Zero)
        Name (CVF4, Zero)
        Mutex (FMT0, 0x00)
        Mutex (FMT1, 0x00)
        Mutex (FMT2, 0x00)
        Mutex (FMT3, 0x00)
        Mutex (FMT4, 0x00)
        ThermalZone (TZ00)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, \CTYP)
            }

            Method (XCRT, 0, Serialized)
            {
                If (CondRefOf (\_PR.ACRT))
                {
                    If (LNotEqual (\_PR.ACRT, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.ACRT, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\CRTT, 0x0A)))
            }

            Method (XAC0, 0, Serialized)
            {
                If (CondRefOf (\_PR.AAC0))
                {
                    If (LNotEqual (\_PR.AAC0, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.AAC0, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\ACTT, 0x0A)))
            }

            Method (XAC1, 0, Serialized)
            {
                Return (Add (0x0AAC, Multiply (\ACT1, 0x0A)))
            }

            Method (XAC2, 0, Serialized)
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x32))
            }

            Method (XAC3, 0, Serialized)
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x64))
            }

            Method (XAC4, 0, Serialized)
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x96))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (0x0BC2)
            }
        }

        ThermalZone (TZ01)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, \CTYP)
            }

            Method (XCRT, 0, Serialized)
            {
                If (CondRefOf (\_PR.ACRT))
                {
                    If (LNotEqual (\_PR.ACRT, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.ACRT, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\CRTT, 0x0A)))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (0x0BC2)
            }

            Method (XPSL, 0, Serialized)
            {
                If (LEqual (\TCNT, 0x10))
                {
                    Return (Package (0x10)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06, 
                        \_PR.PR07, 
                        \_PR.PR08, 
                        \_PR.PR09, 
                        \_PR.PR10, 
                        \_PR.PR11, 
                        \_PR.PR12, 
                        \_PR.PR13, 
                        \_PR.PR14, 
                        \_PR.PR15
                    })
                }

                If (LEqual (\TCNT, 0x0E))
                {
                    Return (Package (0x0E)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06, 
                        \_PR.PR07, 
                        \_PR.PR08, 
                        \_PR.PR09, 
                        \_PR.PR10, 
                        \_PR.PR11, 
                        \_PR.PR12, 
                        \_PR.PR13
                    })
                }

                If (LEqual (\TCNT, 0x0C))
                {
                    Return (Package (0x0C)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06, 
                        \_PR.PR07, 
                        \_PR.PR08, 
                        \_PR.PR09, 
                        \_PR.PR10, 
                        \_PR.PR11
                    })
                }

                If (LEqual (\TCNT, 0x0A))
                {
                    Return (Package (0x0A)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06, 
                        \_PR.PR07, 
                        \_PR.PR08, 
                        \_PR.PR09
                    })
                }

                If (LEqual (\TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06, 
                        \_PR.PR07
                    })
                }

                If (LEqual (\TCNT, 0x07))
                {
                    Return (Package (0x07)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06
                    })
                }

                If (LEqual (\TCNT, 0x06))
                {
                    Return (Package (0x06)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05
                    })
                }

                If (LEqual (\TCNT, 0x05))
                {
                    Return (Package (0x05)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04
                    })
                }

                If (LEqual (\TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03
                    })
                }

                If (LEqual (\TCNT, 0x03))
                {
                    Return (Package (0x03)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02
                    })
                }

                If (LEqual (\TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.PR00, 
                        \_PR.PR01
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.PR00
                })
            }

            Method (XPSV, 0, Serialized)
            {
                If (CondRefOf (\_PR.APSV))
                {
                    If (LNotEqual (\_PR.APSV, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.APSV, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\PSVT, 0x0A)))
            }

            Method (XTC1, 0, Serialized)
            {
                Return (\TC1V)
            }

            Method (XTC2, 0, Serialized)
            {
                Return (\TC2V)
            }

            Method (XTSP, 0, Serialized)
            {
                Return (\TSPV)
            }
        }
    }
}

