//# pattern-1, witnesses: 7
@r0@
identifier i, fn;
@@
struct platform_driver i = {
    .probe = fn,
};
@@
expression IL1;
expression S0;
identifier pdev;
@@
 int gcc_ipq4019_probe(struct platform_device * pdev)
 {
     <...
- struct device * dev = &pdev->dev;
- clk_register_fixed_rate(dev, S0, "xo", 0, IL1);
     ...>
 }
