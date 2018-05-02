//# pattern-1, witnesses: 8
@@
identifier s;
@@
 struct platform_driver s = {
 };
//# pattern-2, witnesses: 8
@r0@
identifier i, fn;
@@
struct platform_driver i = {
    .probe = fn,
};
@@
expression V0;
identifier pdev;
identifier r0.fn;
@@
 int fn(struct platform_device * pdev)
 {
     <...
- ahci_platform_init_host(pdev, hpriv, &V0)
+ ahci_platform_init_host(pdev, hpriv, &V0, &ahci_platform_sht)
     ...>
 }
