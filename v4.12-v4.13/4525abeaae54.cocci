//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
@@
- cmd_exec(dev, in, in_size, out, out_size, E0, E1)
+ cmd_exec(dev, in, in_size, out, out_size, E0, E1, false)
