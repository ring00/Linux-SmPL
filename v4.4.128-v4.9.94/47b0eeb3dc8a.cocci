//# pattern-1, witnesses: 2
@@
statement S0;
identifier core;
identifier fn;
@@
 int fn(struct clk_core * core)
 {
     <...
- if (core->flags & CLK_IS_ROOT) { S0 }
+ if (!core->num_parents) { S0 }
     ...>
 }
