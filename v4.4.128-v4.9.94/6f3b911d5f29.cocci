//# pattern-5, witnesses: 3
@@
statement S0;
identifier fn;
identifier ifindex;
identifier mh;
identifier ops;
@@
 int fn(struct list_head * ops, struct bcm_msg_head * mh, int ifindex)
 {
     <...
- if (op->can_id == mh->can_id && op->ifindex == ifindex) { S0 }
+ if (op->can_id == mh->can_id && op->ifindex == ifindex && op->flags & CAN_FD_FRAME == mh->flags & CAN_FD_FRAME) { S0 }
     ...>
 }
//# pattern-21, witnesses: 3
@@
expression E0;
@@
- E0 * CFSIZ
+ E0 * op->cfsiz
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- E0->can_dlc
+ E0->flags
