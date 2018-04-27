//# pattern-27, witnesses: 3
@@
expression ME0;
@@
- if (!skb_queue_empty(&ME0)) {
- }
//# pattern-6, witnesses: 2
@@
expression E0;
expression E1;
@@
- write_lock_bh(&E0);
- write_unlock_bh(&E1);
+ write_lock(&E1);
+ write_unlock(&E0);
//# pattern-8, witnesses: 2
@@
@@
- write_unlock_bh
+ write_unlock
//# pattern-36, witnesses: 2
@@
@@
- &local->accept_queue;
//# pattern-48, witnesses: 2
@@
expression E1;
expression V0;
@@
- skb_copy_bits(skb, 0, &V0, E1)
+ skb_copy_bits(skb, sp->offset, &V0, E1)
