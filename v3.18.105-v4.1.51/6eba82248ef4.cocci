//# pattern-4, witnesses: 3
@@
expression E0;
expression E1;
@@
- rhashtable_insert(E0, &E1->node, GFP_KERNEL)
+ rhashtable_insert(E0, &E1->node)
//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- rhashtable_remove(E0, &E1->node, GFP_KERNEL)
+ rhashtable_remove(E0, &E1->node)
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression BO0;
expression V1;
identifier flags;
typedef gfp_t;
identifier ht;
identifier r0.fn;
@@
- int fn(struct rhashtable * ht, gfp_t flags)
+ int fn(struct rhashtable * ht)
 {
     <...
- bucket_table_alloc(BO0, flags)
+ bucket_table_alloc(V1->size BO0 2)
     ...>
 }
