//# pattern-3, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0 || icsk->icsk_pending == ICSK_TIME_EARLY_RETRANS || E1
+ E0 || E1
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- if (E0) {
- tcp_disable_early_retrans(tp);
- }
//# pattern-4, witnesses: 2
@@
expression IL0;
@@
- icsk->icsk_pending == ICSK_TIME_EARLY_RETRANS || icsk->icsk_pending == IL0
+ icsk->icsk_pending == IL0
//# pattern-5, witnesses: 2
@@
expression V0;
@@
- tcp_enable_early_retrans(V0);
