//# pattern-2, witnesses: 5
@@
expression list listE0;
@@
- set_in_cr4(listE0)
+ cr4_set_bits(listE0)
//# pattern-1, witnesses: 4
@@
expression list listE0;
@@
- set_in_cr4(listE0)
+ cr4_set_bits_and_update_boot(listE0)
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- clear_in_cr4(listE0)
+ cr4_clear_bits(listE0)
//# pattern-4, witnesses: 2
@@
expression E1;
expression list listE0;
@@
- write_cr4(read_cr4(listE0) | E1)
+ cr4_set_bits(E1)
//# pattern-5, witnesses: 2
@@
expression E1;
expression list listE0;
@@
- write_cr4(read_cr4(listE0) & ~E1)
+ cr4_clear_bits(E1)
