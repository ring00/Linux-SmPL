//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier page;
identifier r0.fn;
@@
 int fn(struct page * page)
 {
     <...
- if (!frontswap_ops) {
- return -1;
- }
- BUG_ON(!PageLocked(page));
- BUG_ON(sis == NULL);
+ VM_BUG_ON(!frontswap_ops);
+ VM_BUG_ON(!PageLocked(page));
+ VM_BUG_ON(sis == NULL);
     ...>
 }
//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (frontswap_selfshrinking && frontswap_enabled) { S0 }
+ if (frontswap_selfshrinking) { S0 }
//# pattern-3, witnesses: 2
@@
@@
- if (!frontswap_ops) {
- return;
- }
- BUG_ON(sis == NULL);
+ VM_BUG_ON(!frontswap_ops);
+ VM_BUG_ON(sis == NULL);
