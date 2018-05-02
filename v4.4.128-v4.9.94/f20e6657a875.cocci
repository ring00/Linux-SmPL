//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct platform_driver i = {
    .probe = fn,
};
@@
expression F0;
identifier pdev;
identifier r0.fn;
@@
 int fn(struct platform_device * pdev)
 {
     <...
- mdio_mux_init(&pdev->dev, F0, &s->mux_handle, s)
+ mdio_mux_init(&pdev->dev, F0, &s->mux_handle, s, NULL)
     ...>
 }
