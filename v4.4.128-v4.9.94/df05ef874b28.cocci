//# pattern-2, witnesses: 6
@r0@
identifier i, fn;
@@
struct pernet_operations i = {
    .exit = fn,
};
@@
expression ME0;
identifier net;
identifier r0.fn;
@@
 void fn(struct net * net)
 {
     <...
- nft_unregister_afinfo(ME0)
+ nft_unregister_afinfo(net, ME0)
     ...>
 }
