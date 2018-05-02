//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct platform_driver i = {
    .probe = fn,
};
@@
expression E0;
expression E1;
expression E2;
identifier pdev;
identifier r0.fn;
@@
 int fn(struct platform_device * pdev)
 {
     <...
- __pata_platform_probe(&pdev->dev, E0, E1, irq_res, E2, pio_mask)
+ __pata_platform_probe(&pdev->dev, E0, E1, irq_res, E2, pio_mask, &pata_platform_sht)
     ...>
 }
