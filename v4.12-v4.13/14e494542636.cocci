//# pattern-6, witnesses: 2
@@
expression E0;
identifier arena;
identifier buf;
identifier flags;
identifier fn;
identifier n;
identifier offset;
typedef resource_size_t;
@@
 int fn(struct arena_info * arena, resource_size_t offset, void * buf, size_t n, unsigned long flags)
 {
     <...
- E0 += SZ_4K
+ E0 += arena->nd_btt->initial_offset
     ...>
 }
