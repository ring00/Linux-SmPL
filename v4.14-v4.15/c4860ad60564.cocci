//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 = E1 & ~PAGE_MASK
+ E0 = lower_32_bits(offset_in_page)
