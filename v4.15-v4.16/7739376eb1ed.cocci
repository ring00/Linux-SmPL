//# pattern-1, witnesses: 2
@@
expression E1;
identifier PV0;
@@
- usb_of_get_child_node(PV0->dev.of_node, E1)
+ usb_of_get_device_node(PV0, E1)
