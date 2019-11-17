/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-6-HdaDsp.aml, Thu Nov 22 14:56:32 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000141 (321)
 *     Revision         0x02
 *     Checksum         0xAB
 *     OEM ID           "INTEL "
 *     OEM Table ID     "HdaDsp"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "HdaDsp", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_SB_.PCI0.HDAS, DeviceObj)    // (from opcode)
    External (ADPM, IntObj)    // (from opcode)
    External (AG1H, IntObj)    // (from opcode)
    External (AG1L, IntObj)    // (from opcode)
    External (AG2H, IntObj)    // (from opcode)
    External (AG2L, IntObj)    // (from opcode)
    External (AG3H, IntObj)    // (from opcode)
    External (AG3L, IntObj)    // (from opcode)

    Scope (\_SB.PCI0.HDAS)
    {
        Method (PPMS, 1, Serialized)
        {
            If (LEqual (Arg0, ToUUID ("7c708106-3aff-40fe-88be-8c999b3f7445")))
            {
                Return (And (ADPM, 0x04))
            }

            If (LEqual (Arg0, ToUUID ("ec774fa9-28d3-424a-90e4-69f984f1eeb7")))
            {
                Return (And (ADPM, 0x0100))
            }

            If (LEqual (Arg0, ACCG (AG1L, AG1H)))
            {
                Return (And (ADPM, 0x20000000))
            }

            If (LEqual (Arg0, ACCG (AG2L, AG2H)))
            {
                Return (And (ADPM, 0x40000000))
            }

            If (LEqual (Arg0, ACCG (AG3L, AG3H)))
            {
                Return (And (ADPM, 0x80000000))
            }

            Return (Zero)
        }

        Method (ACCG, 2, NotSerialized)
        {
            Name (GBUF, Buffer (0x10){})
            Concatenate (Arg0, Arg1, GBUF)
            Return (GBUF)
        }
    }
}

