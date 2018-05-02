//# pattern-13, witnesses: 2
@@
expression E0;
@@
- devm_memremap_pages(dev, E0)
+ devm_memremap_pages(dev, E0, NULL)
