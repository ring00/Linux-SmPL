//# pattern-1, witnesses: 6
@r0@
identifier i, fn;
@@
struct proc_ns_operations i = {
    .install = fn,
};
@@
identifier ns;
identifier nsproxy;
identifier r0.fn;
@@
- int fn(struct nsproxy * nsproxy, void * ns)
+ int fn(struct nsproxy * nsproxy, struct ns_common * ns)
 { ... }
//# pattern-2, witnesses: 6
@r1@
identifier i, fn;
@@
struct proc_ns_operations i = {
    .put = fn,
};
@@
identifier ns;
identifier r1.fn;
@@
- void fn(void * ns)
+ void fn(struct ns_common * ns)
 { ... }
//# pattern-4, witnesses: 6
@@
expression F1;
identifier s;
@@
 const struct proc_ns_operations s = {
-    .inum = F1,
 };
//# pattern-3, witnesses: 2
@@
@@
- ns_ops->inum(ns)
+ ns->inum
