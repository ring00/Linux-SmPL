//# pattern-2, witnesses: 8
@r0@
identifier i, fn;
@@
struct nf_conntrack_l4proto i = {
    .print_tuple = fn,
};
@@
identifier r0.fn;
identifier s;
identifier tuple;
@@
- int fn(struct seq_file * s, const struct nf_conntrack_tuple * tuple)
+ void fn(struct seq_file * s, const struct nf_conntrack_tuple * tuple)
 { ... }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct nf_conntrack_l3proto i = {
    .print_tuple = fn,
};
@@
expression E1;
expression E2;
expression S0;
identifier r1.fn;
identifier s;
identifier tuple;
@@
 void fn(struct seq_file * s, const struct nf_conntrack_tuple * tuple)
 {
     <...
- return seq_printf(s, S0, E1, E2);
     ...>
 }
