//# pattern-2, witnesses: 6
@r0@
identifier i, fn;
@@
struct gre_cisco_protocol i = {
    .err_handler = fn,
};
@@
expression IL0;
identifier info;
identifier skb;
identifier tpi;
typedef u32;
@@
- int ipgre_err(struct sk_buff * skb, u32 info, const struct tnl_ptk_info * tpi)
+ void ipgre_err(struct sk_buff * skb, u32 info, const struct tnl_ptk_info * tpi)
 {
     <...
- return IL0;
+ return;
     ...>
 }
