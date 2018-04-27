//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct proto i = {
    .connect = fn,
};
@@
expression E0;
expression E1;
identifier addr_len;
identifier r0.fn;
identifier sk;
identifier uaddr;
@@
 int fn(struct sock * sk, struct sockaddr * uaddr, int addr_len)
 {
     <...
- if (tcp_death_row->sysctl_tw_recycle && !tp->rx_opt.ts_recent_stamp && E0) {
- tcp_fetch_timewait_stamp(sk, E1);
- }
     ...>
 }
//# pattern-8, witnesses: 2
@@
expression EC0;
@@
- tcp_peer_is_proven(req, dst, EC0, tmp_opt.saw_tstamp)
+ tcp_peer_is_proven(req, dst)
