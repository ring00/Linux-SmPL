//# pattern-6, witnesses: 2
@@
expression E1;
expression E2;
identifier PV0;
@@
- sctp_add_bind_addr(PV0, &addr->a, E1, E2)
+ sctp_add_bind_addr(PV0, &addr->a, sizeof(unsigned long), E1, E2)
