//# pattern-1, witnesses: 7
@@
expression E0;
expression E1;
@@
- inet_twsk_deschedule(E0);
- inet_twsk_put(E1);
+ inet_twsk_deschedule_put(E0);
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- inet_twsk_deschedule(listE0)
+ inet_twsk_deschedule_put(listE0)
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier skb;
identifier th;
identifier tw;
@@
 enum tcp_tw_status tcp_timewait_state_process(struct inet_timewait_sock * tw, struct sk_buff * skb, const struct tcphdr * th)
 {
     <...
- inet_twsk_put(tw);
     ...>
 }
