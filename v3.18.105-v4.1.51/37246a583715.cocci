//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct nf_conntrack_l4proto i = {
    .print_conntrack = fn,
};
@@
identifier ct;
identifier r0.fn;
identifier s;
@@
- int fn(struct seq_file * s, struct nf_conn * ct)
+ void fn(struct seq_file * s, struct nf_conn * ct)
 { ... }
