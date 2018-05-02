//# pattern-2, witnesses: 3
@@
expression V0;
@@
- of_usb_get_dr_mode(V0)
+ usb_get_dr_mode(&pdev->dev)
//# pattern-1, witnesses: 2
@@
@@
- of_usb_get_dr_mode(dev->of_node)
+ usb_get_dr_mode(dev)
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- of_usb_get_dr_mode(E0->dev.of_node)
+ usb_get_dr_mode(&E0->dev)
