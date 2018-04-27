//# pattern-4, witnesses: 7
@r0@
identifier i, fn;
@@
struct tcf_proto_ops i = {
    .destroy = fn,
};
@@
typedef bool;
identifier force;
identifier r0.fn;
identifier tp;
@@
- bool fn(struct tcf_proto * tp, bool force)
+ void fn(struct tcf_proto * tp)
 {
     <...
- return true;
     ...>
 }
//# pattern-5, witnesses: 5
@r1@
identifier i, fn;
@@
struct tcf_proto_ops i = {
    .destroy = fn,
};
@@
expression E0;
identifier r1.fn;
identifier tp;
@@
 void fn(struct tcf_proto * tp)
 {
     <...
- if (E0) {
- return false;
- }
     ...>
 }
//# pattern-17, witnesses: 4
@@
@@
- tcf_proto_destroy(tp, true)
+ tcf_proto_destroy(tp)
//# pattern-6, witnesses: 2
@r2@
identifier i, fn;
@@
struct tcf_proto_ops i = {
    .destroy = fn,
};
@@
identifier r2.fn;
identifier tp;
@@
 void fn(struct tcf_proto * tp)
 {
     <...
- if (head == NULL) {
- return true;
- }
- if (!force) {
- }
- return true;
+ if (head == NULL) {
+ return;
+ }
     ...>
 }
//# pattern-13, witnesses: 2
@r3@
identifier i, fn;
@@
struct tcf_proto_ops i = {
    .delete = fn,
};
@@
identifier arg;
identifier r3.fn;
identifier tp;
@@
- int fn(struct tcf_proto * tp, unsigned long arg)
+ int fn(struct tcf_proto * tp, unsigned long arg, bool * last)
 { ... }
