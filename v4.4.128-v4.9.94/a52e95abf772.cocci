//# pattern-1, witnesses: 2
@@
identifier fn;
identifier h;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct nlmsghdr * h)
 {
     <...
- inet_diag_bc_audit(attr)
+ inet_diag_bc_audit(attr, skb)
     ...>
 }
