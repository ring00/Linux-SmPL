//# pattern-1, witnesses: 2
@@
expression S0;
statement S1;
@@
- if (of_device_is_compatible(np, S0)) { S1 }
+ if (of_device_is_compatible(np, S0) || of_device_is_compatible(np, "allwinner,sun8i-a23-usb-phy")) { S1 }
