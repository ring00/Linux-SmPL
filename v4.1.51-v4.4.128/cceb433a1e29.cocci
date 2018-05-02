//# pattern-18, witnesses: 4
@@
@@
- CONTROL1_SW_USB
+ MAX77693_CONTROL1_SW_USB
//# pattern-1, witnesses: 3
@@
@@
- STATUS1_ADC_MASK
+ MAX77693_STATUS1_ADC_MASK
//# pattern-10, witnesses: 3
@@
expression E0;
@@
- E0 >>= STATUS1_ADC_SHIFT
+ E0 >>= MAX77693_STATUS1_ADC_SHIFT
//# pattern-16, witnesses: 3
@@
@@
- CONTROL1_SW_UART
+ MAX77693_CONTROL1_SW_UART
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0 >>= STATUS2_VBVOLT_SHIFT
+ E0 >>= MAX77693_STATUS2_VBVOLT_SHIFT
//# pattern-5, witnesses: 2
@@
@@
- CONTROL2_LOWPWR_MASK
+ MAX77693_CONTROL2_LOWPWR_MASK
//# pattern-6, witnesses: 2
@@
@@
- CONTROL2_CPEN_MASK
+ MAX77693_CONTROL2_CPEN_MASK
//# pattern-8, witnesses: 2
@@
@@
- STATUS2_VBVOLT_MASK
+ MAX77693_STATUS2_VBVOLT_MASK
//# pattern-9, witnesses: 2
@@
@@
- STATUS2_CHGTYP_MASK
+ MAX77693_STATUS2_CHGTYP_MASK
//# pattern-12, witnesses: 2
@@
expression E0;
@@
- E0 >>= STATUS2_CHGTYP_SHIFT
+ E0 >>= MAX77693_STATUS2_CHGTYP_SHIFT
//# pattern-13, witnesses: 2
@@
@@
- CONTROL1_SW_OPEN
+ MAX77693_CONTROL1_SW_OPEN
//# pattern-17, witnesses: 2
@@
@@
- CONTROL1_SW_AUDIO
+ MAX77693_CONTROL1_SW_AUDIO
