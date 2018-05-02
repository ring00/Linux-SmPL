//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct component_ops i = {
    .bind = fn,
};
@@
identifier data;
identifier dev;
identifier master;
identifier r0.fn;
@@
 int fn(struct device * dev, struct device * master, void * data)
 {
     <...
- struct resource * iores = iores;
- int irq = irq;
- irq = platform_get_irq(pdev, 0);
- if (irq < 0) {
- return irq;
- }
- iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
- if (!iores) {
- return -ENXIO;
- }
- ret = dw_hdmi_bind(dev, encoder, iores, irq, plat_data);
+ ret = dw_hdmi_bind(pdev, encoder, plat_data);
     ...>
 }
