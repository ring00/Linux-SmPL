//# pattern-2, witnesses: 2
@@
expression E0;
@@
- sctp_cmd_hb_timer_update(commands, E0)
+ sctp_transport_reset_hb_timer(E0)
//# pattern-8, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- if (!mod_timer(&E0->hb_timer, sctp_transport_timeout(E1))) {
- sctp_transport_hold(E2);
- }
+ sctp_transport_reset_hb_timer(E1);
