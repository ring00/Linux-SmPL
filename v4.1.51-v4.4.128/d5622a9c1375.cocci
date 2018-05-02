//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier clk;
identifier con_id;
identifier dev_fmt;
identifier r0.fn;
@@
 struct clk_lookup * fn(struct clk * clk, const char * con_id, const char * dev_fmt)
 {
     <...
- vclkdev_alloc(clk, con_id, dev_fmt, ap)
+ vclkdev_alloc(__clk_get_hw(clk), con_id, dev_fmt, ap)
     ...>
 }
