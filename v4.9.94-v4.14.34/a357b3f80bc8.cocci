//# pattern-1, witnesses: 6
@r0@
identifier i, fn;
@@
struct xt_target i = {
    .checkentry = fn,
};
@@
identifier par;
identifier r0.fn;
@@
 int fn(const struct xt_tgchk_param * par)
 {
     <...
- return 0;
+ return nf_ct_netns_get(par->net, par->family);
     ...>
 }
