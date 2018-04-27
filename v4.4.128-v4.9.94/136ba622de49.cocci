//# pattern-4, witnesses: 2
@@
expression F0;
expression F2;
expression ME1;
expression ME3;
identifier cb;
identifier fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct netlink_callback * cb)
 {
     <...
- if (h == NETDEV_HASHENTRIES) {
- if (F0(skb, NETCONFA_IFINDEX_ALL, ME1.devconf_all, NETLINK_CB(cb->skb).portid, cb->nlh->nlmsg_seq, RTM_NEWNETCONF, NLM_F_MULTI, -1) < 0) {
- }
- }
- if (h == NETDEV_HASHENTRIES + 1) {
- if (F2(skb, NETCONFA_IFINDEX_DEFAULT, ME3.devconf_dflt, NETLINK_CB(cb->skb).portid, cb->nlh->nlmsg_seq, RTM_NEWNETCONF, NLM_F_MULTI, -1) < 0) {
- }
- }
+ if (h == NETDEV_HASHENTRIES) {
+ if (F0(skb, NETCONFA_IFINDEX_ALL, ME1.devconf_all, NETLINK_CB(cb->skb).portid, cb->nlh->nlmsg_seq, RTM_NEWNETCONF, NLM_F_MULTI, NETCONFA_ALL) < 0) {
+ }
+ }
+ if (h == NETDEV_HASHENTRIES + 1) {
+ if (F2(skb, NETCONFA_IFINDEX_DEFAULT, ME3.devconf_dflt, NETLINK_CB(cb->skb).portid, cb->nlh->nlmsg_seq, RTM_NEWNETCONF, NLM_F_MULTI, NETCONFA_ALL) < 0) {
+ }
+ }
     ...>
 }
