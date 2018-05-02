//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct platform_driver i = {
    .probe = fn,
};
@@
expression ME0;
identifier pdev;
@@
 int twl4030_bci_probe(struct platform_device * pdev)
 {
     <...
- if (device_create_file(&ME0->dev, &dev_attr_max_current)) {
- dev_warn(&pdev->dev, "could not create sysfs file\n");
- }
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression ME0;
@@
- device_remove_file(&ME0->dev, &dev_attr_max_current);
