//# pattern-1, witnesses: 2
@@
expression F0;
@@
- VM_BUG_ON_PAGE(!F0(page))
+ VM_BUG_ON_PAGE(!F0(page) && !is_zone_device_page(page))
