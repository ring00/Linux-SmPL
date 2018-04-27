//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct Qdisc_ops i = {
    .init = fn,
};
@@
expression ME0;
identifier opt;
identifier r0.fn;
identifier sch;
@@
 int fn(struct Qdisc * sch, struct nlattr * opt)
 {
     <...
- codel_params_init(&ME0)
+ codel_params_init(&ME0, sch)
     ...>
 }
