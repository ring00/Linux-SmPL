//# pattern-4, witnesses: 2
@@
expression V0;
@@
- string_get_size(get_capacity(V0->disk) << 9, STRING_UNITS_2, cap_str, sizeof(unsigned long))
+ string_get_size(get_capacity(V0->disk), 512, STRING_UNITS_2, cap_str, sizeof(unsigned long))
