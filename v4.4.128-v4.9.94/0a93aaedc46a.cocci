//# pattern-2, witnesses: 2
@@
@@
- struct net * net = seq_file_net(seq);
//# pattern-5, witnesses: 2
@@
identifier net;
@@
 int nf_conntrack_expect_pernet_init(struct net * net)
 {
     <...
- int err = -ENOMEM;
- err = exp_proc_init(net);
- return 0;
+ return exp_proc_init(net);
     ...>
 }
