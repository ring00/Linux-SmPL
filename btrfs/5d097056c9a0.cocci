//# pattern-4, witnesses: 21
@@
expression E0;
@@
- E0 | SLAB_MEM_SPREAD
+ E0 | SLAB_MEM_SPREAD | SLAB_ACCOUNT
//# pattern-1, witnesses: 5
@@
@@
- SLAB_HWCACHE_ALIGN
+ SLAB_HWCACHE_ALIGN | SLAB_ACCOUNT
//# pattern-2, witnesses: 3
@@
@@
- GFP_KERNEL
+ GFP_KERNEL_ACCOUNT
