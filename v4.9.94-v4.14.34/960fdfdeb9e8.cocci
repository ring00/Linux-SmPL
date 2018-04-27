//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression BO0;
expression IL1;
identifier afinfo;
@@
- int xfrm_input_unregister_afinfo(struct xfrm_input_afinfo * afinfo)
+ int xfrm_input_unregister_afinfo(const struct xfrm_input_afinfo * afinfo)
 {
     <...
- if (unlikely(BO0)) {
- return -IL1;
- }
     ...>
 }
//# pattern-2, witnesses: 2
@@
identifier s;
@@
- struct xfrm_input_afinfo s = {
+ const struct xfrm_input_afinfo s = {
-    . = 0,
 };
