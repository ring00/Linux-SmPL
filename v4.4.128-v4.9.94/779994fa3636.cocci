//# pattern-3, witnesses: 4
@r0@
identifier i, fn;
@@
struct pernet_operations i = {
    .init = fn,
};
@@
expression EC0;
expression V1;
identifier net;
identifier r0.fn;
@@
 int fn(struct net * net)
 {
     <...
- nf_log_set(net, EC0, &V1);
- return 0;
+ return nf_log_set(net, EC0, &V1);
     ...>
 }
