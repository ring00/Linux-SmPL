//# pattern-2, witnesses: 4
@@
@@
- TCA_FLOWER_UNSPEC
+ TCA_FLOWER_KEY_UDP_DST_MASK
//# pattern-3, witnesses: 2
@@
expression EC1;
expression ME0;
expression ME2;
expression ME3;
expression ME4;
identifier key;
identifier mask;
identifier net;
identifier tb;
@@
 int fl_set_key(struct net * net, struct nlattr ** tb, struct fl_flow_key * key, struct fl_flow_key * mask)
 {
     <...
- if (key->basic.ip_proto == IPPROTO_TCP) {
- fl_set_key_val(tb, &ME0, EC1, &ME2, TCA_FLOWER_UNSPEC, sizeof(unsigned long));
- }
+ if (key->basic.ip_proto == IPPROTO_TCP) {
+ fl_set_key_val(tb, &ME3, EC1, &ME4, TCA_FLOWER_KEY_TCP_DST_MASK, sizeof(unsigned long));
+ }
     ...>
 }
