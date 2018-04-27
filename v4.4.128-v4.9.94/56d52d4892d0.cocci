//# pattern-4, witnesses: 10
@@
expression E0;
@@
- E0->ct.htable_size
+ nf_conntrack_htable_size
//# pattern-7, witnesses: 3
@@
expression E0;
@@
- hash_bucket(E0, net)
+ scale_hash(E0)
//# pattern-8, witnesses: 3
@@
expression E0;
@@
- E0->ct.hash
+ nf_conntrack_hash
//# pattern-5, witnesses: 2
@@
identifier seq;
@@
 struct hlist_nulls_node * ct_get_first(struct seq_file * seq)
 {
     <...
- struct net * net = seq_file_net(seq);
     ...>
 }
//# pattern-12, witnesses: 2
@@
identifier head;
identifier seq;
@@
 struct hlist_nulls_node * ct_get_next(struct seq_file * seq, struct hlist_nulls_node * head)
 {
     <...
- struct net * net = seq_file_net(seq);
     ...>
 }
