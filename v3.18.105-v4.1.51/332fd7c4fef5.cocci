//# pattern-1, witnesses: 9
@@
expression E0;
expression ME1;
@@
- irq_reg_writel(E0, gc->reg_base + ME1)
+ irq_reg_writel(gc, E0, ME1)
