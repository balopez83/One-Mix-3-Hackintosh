/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-4-xh_rvp03.aml, Thu Nov 22 14:56:32 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000B8B (2955)
 *     Revision         0x02
 *     Checksum         0xBF
 *     OEM ID           "INTEL"
 *     OEM Table ID     "xh_rvp03"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL", "xh_rvp03", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_SB_.PCI0.LPCB.CRID, IntObj)    // (from opcode)
    External (_SB_.PCI0.XDCI, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS06, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.USR1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.USR2, DeviceObj)    // (from opcode)
    External (DSAD, IntObj)    // (from opcode)
    External (DSPR, IntObj)    // (from opcode)
    External (DSRS, IntObj)    // (from opcode)

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Method (GPLD, 2, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x10){}
            })
            CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
            Store (One, REV)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
            Store (Arg0, VISI)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
            Store (Arg1, GPOS)
            Return (PCKG)
        }

        Method (TPLD, 2, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x10){}
            })
            CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
            Store (One, REV)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
            Store (Arg0, VISI)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
            Store (Arg1, GPOS)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x4A, 0x04, SHAP)
            Store (One, SHAP)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x20, 0x10, WID)
            Store (0x08, WID)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x30, 0x10, HGT)
            Store (0x03, HGT)
            Return (PCKG)
        }

        Method (GUPC, 1, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            Store (Arg0, Index (PCKG, Zero))
            Return (PCKG)
        }

        Method (TUPC, 1, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                One, 
                Zero, 
                Zero, 
                Zero
            })
            Store (Arg0, Index (PCKG, One))
            Return (PCKG)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (TUPC (0x09))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (TPLD (One, One))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS02)
    {
        Device (CAM1)
        {
            Name (_ADR, 0x02)  // _ADR: Address
            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
            {
                Return (GUPC (One))
            }

            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x25, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                }
            })
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x05))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x07))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS08)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS09)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS10)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR1)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR2)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (TUPC (0x09))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (TPLD (One, One))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }

        Method (DS01, 1, Serialized)
        {
            Name (UPCP, Package (0x04)
            {
                0xFF, 
                0xFF, 
                Zero, 
                Zero
            })
            Return (UPCP)
        }

        Method (DS02, 1, Serialized)
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x14)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x28, 0x01, 0x80, 0x07, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                }
            })
            CreateField (DerefOf (Index (PLDP, Zero)), 0x70, 0x08, ROTA)
            CreateField (DerefOf (Index (PLDP, Zero)), 0x80, 0x08, VOFL)
            CreateField (DerefOf (Index (PLDP, Zero)), 0x88, 0x08, VOFH)
            CreateField (DerefOf (Index (PLDP, Zero)), 0x90, 0x08, HOFL)
            CreateField (DerefOf (Index (PLDP, Zero)), 0x98, 0x08, HOFH)
            If (LEqual (Arg0, Zero))
            {
                Switch (ToInteger (DSRS))
                {
                    Case (Zero)
                    {
                        Store (0xA0, VOFL)
                        Store (Zero, VOFH)
                        Store (0x46, HOFL)
                        Store (Zero, HOFH)
                        Store (Zero, ROTA)
                    }
                    Case (0x02)
                    {
                        Store (0x8C, VOFL)
                        Store (Zero, VOFH)
                        Store (0xA0, HOFL)
                        Store (Zero, HOFH)
                        Store (0x10, ROTA)
                    }
                    Case (0x04)
                    {
                        Store (0xA0, VOFL)
                        Store (Zero, VOFH)
                        Store (0x46, HOFL)
                        Store (Zero, HOFH)
                        Store (0x20, ROTA)
                    }
                    Case (0x06)
                    {
                        Store (0x46, VOFL)
                        Store (Zero, VOFH)
                        Store (0xA0, HOFL)
                        Store (Zero, HOFH)
                        Store (0x30, ROTA)
                    }

                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                Switch (ToInteger (DSRS))
                {
                    Case (Zero)
                    {
                        Store (0xA0, VOFL)
                        Store (Zero, VOFH)
                        Store (0x5A, HOFL)
                        Store (Zero, HOFH)
                        Store (Zero, ROTA)
                    }
                    Case (0x02)
                    {
                        Store (0x5A, VOFL)
                        Store (Zero, VOFH)
                        Store (0xA0, HOFL)
                        Store (Zero, HOFH)
                        Store (0x10, ROTA)
                    }
                    Case (0x04)
                    {
                        Store (0xA0, VOFL)
                        Store (Zero, VOFH)
                        Store (0x5A, HOFL)
                        Store (Zero, HOFH)
                        Store (0x20, ROTA)
                    }
                    Case (0x06)
                    {
                        Store (0x5A, VOFL)
                        Store (Zero, VOFH)
                        Store (0xA0, HOFL)
                        Store (Zero, HOFH)
                        Store (0x30, ROTA)
                    }

                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Switch (ToInteger (DSRS))
                {
                    Case (Zero)
                    {
                        Store (0xA0, VOFL)
                        Store (Zero, VOFH)
                        Store (0x8C, HOFL)
                        Store (Zero, HOFH)
                        Store (Zero, ROTA)
                    }
                    Case (0x02)
                    {
                        Store (0x46, VOFL)
                        Store (Zero, VOFH)
                        Store (0xA0, HOFL)
                        Store (Zero, HOFH)
                        Store (0x10, ROTA)
                    }
                    Case (0x04)
                    {
                        Store (0xA0, VOFL)
                        Store (Zero, VOFH)
                        Store (0x8C, HOFL)
                        Store (Zero, HOFH)
                        Store (0x20, ROTA)
                    }
                    Case (0x06)
                    {
                        Store (0x8C, VOFL)
                        Store (Zero, VOFH)
                        Store (0xA0, HOFL)
                        Store (Zero, HOFH)
                        Store (0x30, ROTA)
                    }

                }
            }

            Return (PLDP)
        }

        Device (CDPT)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (DSPR)
            }

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (Add (DSAD, 0x02))
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (DS01 (Zero))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (DS02 (Zero))
            }
        }

        Device (CRGB)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (DSPR)
            }

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (Add (DSAD, 0x04))
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (DS01 (One))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (DS02 (One))
            }
        }

        Device (CLRY)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (DSPR)
            }

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (DSAD)
            }

            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (DS01 (0x02))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (DS02 (0x02))
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x05))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XDCI)
    {
        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.PCI0.XHC.RHUB.TPLD (One, One))
        }

        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.PCI0.XHC.RHUB.TUPC (0x09))
        }
    }
}

