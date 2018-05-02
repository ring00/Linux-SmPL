//# pattern-4, witnesses: 10
@@
expression E0;
@@
- E0->nr_pages
+ E0->nr_sects
//# pattern-2, witnesses: 5
@@
expression E0;
@@
- E0->total_pages
+ E0->total_secs
//# pattern-1, witnesses: 2
@@
identifier entries;
identifier fn;
identifier nlb;
identifier private;
identifier slba;
typedef u32;
typedef u64;
@@
 int fn(u64 slba, u32 nlb, __le64 * entries, void * private)
 {
     <...
- sector_t max_pages = dev->total_pages * dev->sec_size >> 9;
     ...>
 }
