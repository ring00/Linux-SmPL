//# pattern-1, witnesses: 4
@r0@
identifier fn;
expression P1, P2;
@@
move_pfn_range(fn, P1, P2)
@@
typedef bool;
identifier nr_pages;
identifier pfn;
identifier target;
@@
- int zone_can_shift(unsigned long pfn, unsigned long nr_pages, enum zone_type target)
+ bool zone_can_shift(unsigned long pfn, unsigned long nr_pages, enum zone_type target, int * zone_shift)
 {
     <...
- return 0;
+ return false;
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression EC0;
identifier nr_pages;
identifier online_type;
identifier pfn;
@@
 int online_pages(unsigned long pfn, unsigned long nr_pages, int online_type)
 {
     ...
- zone_shift = zone_can_shift(pfn, nr_pages, EC0);
+ if (!zone_can_shift(pfn, nr_pages, EC0, &zone_shift)) {
+ return -EINVAL;
+ }
 }
