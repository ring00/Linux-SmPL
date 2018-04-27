//# pattern-1, witnesses: 3
@r0@
identifier fn;
expression P0, P1, P3;
@@
(varies)(P0, P1, fn, P3)
@@
identifier key;
identifier r0.fn;
@@
- int fn(struct wait_bit_key * key)
+ int fn(struct wait_bit_key * key, int mode)
 {
     <...
- fatal_signal_pending(current)
+ signal_pending_state(mode, current)
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier action;
identifier mode;
identifier q;
identifier r1.fn;
identifier wq;
@@
 int fn(wait_queue_head_t * wq, struct wait_bit_queue * q, wait_bit_action_f * action, unsigned int mode)
 {
     <...
- E0(&q->key)
+ E0(&q->key, mode)
     ...>
 }
