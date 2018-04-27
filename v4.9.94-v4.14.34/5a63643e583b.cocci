//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct pernet_operations i = {
    .init = fn,
};
@@
expression E0;
expression E2;
expression F1;
identifier net;
identifier r0.fn;
@@
 int fn(struct net * net)
 {
     <...
- int res = res;
- res = inet_frags_init_net(&E0->frags);
- if (res) {
- return res;
- }
- res = F1(net);
- if (res) {
- inet_frags_uninit_net(&E2->frags);
- }
- return res;
+ inet_frags_init_net(&E0->frags);
+ return F1(net);
     ...>
 }
