//# pattern-6, witnesses: 2
@@
expression E0;
@@
- icsk->icsk_pending == ICSK_TIME_RETRANS || icsk->icsk_pending == ICSK_TIME_EARLY_RETRANS || E0
+ icsk->icsk_pending == ICSK_TIME_RETRANS || icsk->icsk_pending == ICSK_TIME_EARLY_RETRANS || icsk->icsk_pending == ICSK_TIME_REO_TIMEOUT || E0
