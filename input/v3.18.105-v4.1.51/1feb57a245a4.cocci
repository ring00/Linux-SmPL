//# pattern-1, witnesses: 2
@@
@@
- devm_get_gpiod_from_child(dev, child)
+ devm_get_gpiod_from_child(dev, NULL, child)
