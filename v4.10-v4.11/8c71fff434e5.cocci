//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dev;
identifier height;
identifier width;
@@
- int vsp1_du_setup_lif(struct device * dev, unsigned int width, unsigned int height)
+ int vsp1_du_setup_lif(struct device * dev, const struct vsp1_du_lif_config * cfg)
 {
     <...
- format.format.height = height
+ format.format.height = cfg->height
     ...>
 }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier cfg;
identifier dev;
@@
 int vsp1_du_setup_lif(struct device * dev, const struct vsp1_du_lif_config * cfg)
 {
     <...
- format.format.width = width
+ format.format.width = cfg->width
     ...>
 }
