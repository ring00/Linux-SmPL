//# pattern-9, witnesses: 4
@@
identifier fn;
identifier hw;
identifier p;
identifier p_rate;
identifier rate;
@@
- long fn(struct clk_hw * hw, unsigned long rate, unsigned long * p_rate, struct clk ** p)
+ long fn(struct clk_hw * hw, unsigned long rate, unsigned long * p_rate, struct clk_hw ** p)
 { ... }
