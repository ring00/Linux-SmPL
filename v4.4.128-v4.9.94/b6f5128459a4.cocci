//# pattern-2, witnesses: 7
@@
expression list listE0;
@@
- clk_get_rate(listE0)
+ clk_hw_get_rate(listE0)
//# pattern-5, witnesses: 4
@@
expression E0;
expression ME1;
@@
- E0 = __clk_get_hw(ME1)
+ E0 = ME1
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0 != __clk_get_hw(dd->clk_ref)
+ E0 != dd->clk_ref
