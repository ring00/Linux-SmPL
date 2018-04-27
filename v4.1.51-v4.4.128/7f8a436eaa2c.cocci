//# pattern-10, witnesses: 2
@@
expression list listE0;
@@
- add_action(listE0)
+ ovs_nla_add_action(listE0)
//# pattern-22, witnesses: 2
@@
expression E0;
identifier attr;
identifier dp;
identifier key;
identifier len;
identifier skb;
@@
 int do_execute_actions(struct datapath * dp, struct sk_buff * skb, struct sw_flow_key * key, const struct nlattr * attr, int len)
 {
     <...
- do_output(dp, E0, prev_port)
+ do_output(dp, E0, prev_port, key)
     ...>
 }
