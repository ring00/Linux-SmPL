//# pattern-1, witnesses: 4
@@
statement S0;
identifier fn;
identifier hooknum;
identifier in;
identifier loginfo;
identifier net;
identifier out;
identifier pf;
identifier prefix;
identifier skb;
typedef u_int8_t;
@@
 void fn(struct net * net, u_int8_t pf, unsigned int hooknum, const struct sk_buff * skb, const struct net_device * in, const struct net_device * out, const struct nf_loginfo * loginfo, const char * prefix)
 {
     <...
- if (!net_eq(net, &init_net)) { S0 }
+ if (!net_eq(net, &init_net) && !sysctl_nf_log_all_netns) { S0 }
     ...>
 }
