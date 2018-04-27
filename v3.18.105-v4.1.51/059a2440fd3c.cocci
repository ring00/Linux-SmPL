//# pattern-1, witnesses: 3
@@
expression E1;
expression E2;
expression V0;
identifier ct;
identifier ctinfo;
identifier protoff;
identifier skb;
@@
 int amanda_help(struct sk_buff * skb, unsigned int protoff, struct nf_conn * ct, enum ip_conntrack_info ctinfo)
 {
     <...
- skb_find_text(skb, V0, E1, search[E2].ts, &ts)
+ skb_find_text(skb, V0, E1, search[E2].ts)
     ...>
 }
//# pattern-7, witnesses: 2
@@
@@
- struct ts_state ts = ts;
- memset(&ts, 0, sizeof(unsigned long));
