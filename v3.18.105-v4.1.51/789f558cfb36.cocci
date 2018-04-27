//# pattern-2, witnesses: 9
@@
expression E0;
expression E1;
@@
- inet_twsk_deschedule(E0, E1)
+ inet_twsk_deschedule(E0)
//# pattern-7, witnesses: 4
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier skb;
identifier th;
identifier tw;
@@
 enum tcp_tw_status tcp_timewait_state_process(struct inet_timewait_sock * tw, struct sk_buff * skb, const struct tcphdr * th)
 {
     <...
- inet_twsk_schedule(tw, &tcp_death_row, E0, TCP_TIMEWAIT_LEN)
+ inet_twsk_schedule(tw, E0)
     ...>
 }
//# pattern-9, witnesses: 3
@@
expression list listE0;
@@
- tw->tw_ttd - inet_tw_time_stamp(listE0)
+ tw->tw_timer.expires - jiffies
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier tw;
identifier twdr;
@@
- void inet_twsk_deschedule(struct inet_timewait_sock * tw, struct inet_timewait_death_row * twdr)
+ void inet_twsk_deschedule(struct inet_timewait_sock * tw)
 {
     <...
- &twdr->death_lock;
     ...>
 }
//# pattern-10, witnesses: 2
@@
identifier s;
@@
 struct inet_timewait_death_row s = {
-    .twcal_hand = -1,
-    .twcal_timer = ,
-    .death_lock = ,
-    .period = 60 * 250 / 8,
-    .twkill_work = ,
-    .tw_timer = ,
 };
//# pattern-16, witnesses: 2
@@
identifier s;
@@
 struct inet_timewait_sock * s = {
 };
