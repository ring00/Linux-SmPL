//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct genl_ops i = {
    .doit = fn,
};
@@
identifier info;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct genl_info * info)
 {
     <...
- if (wdev->owner_nlportid && wdev->owner_nlportid != info->snd_portid) {
- return -ENOTCONN;
- }
     ...>
 }
