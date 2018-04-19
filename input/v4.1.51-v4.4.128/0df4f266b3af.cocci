//# pattern-2, witnesses: 11
@@
expression E0;
@@
- virt_to_mfn(E0)
+ virt_to_gfn(E0)
//# pattern-3, witnesses: 2
@@
identifier fn;
identifier index;
identifier oid;
identifier pfn;
identifier pool_id;
identifier s;
typedef u32;
@@
  unsigned long s = {
 };
int fn(u32 pool_id, struct tmem_oid oid, u32 index, unsigned long pfn)
 {
     <...
 unsigned long s = {
 };
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- pfn_to_mfn(listE0)
+ pfn_to_gfn(listE0)
