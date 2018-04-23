//# pattern-4, witnesses: 5
@@
expression E0;
@@
- nf_ct_key_equal(h, E0, zone)
+ nf_ct_key_equal(h, E0, zone, net)
//# pattern-1, witnesses: 2
@@
identifier fn;
identifier hash;
identifier net;
identifier tuple;
typedef u32;
identifier zone;
@@
 struct nf_conntrack_tuple_hash * fn(struct net * net, const struct nf_conntrack_zone * zone, const struct nf_conntrack_tuple * tuple, u32 hash)
 {
     <...
- nf_ct_key_equal(h, tuple, zone)
+ nf_ct_key_equal(h, tuple, zone, net)
     ...>
 }
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct seq_operations i = {
    .show = fn,
};
@@
identifier s;
identifier v;
@@
 int ct_seq_show(struct seq_file * s, void * v)
 {
     <...
- ct_seq_should_skip(ct, hash)
+ ct_seq_should_skip(ct, seq_file_net(s), hash)
     ...>
 }
