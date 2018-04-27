//# pattern-1, witnesses: 2
@@
identifier fn;
identifier seq;
identifier tp;
typedef u32;
@@
 void fn(struct tcp_sock * tp, u32 seq)
 {
     <...
- u64_stats_update_begin(&tp->syncp);
- u64_stats_update_end(&tp->syncp);
+ sock_owned_by_me(tp);
+ u64_stats_update_begin_raw(&tp->syncp);
+ u64_stats_update_end_raw(&tp->syncp);
     ...>
 }
