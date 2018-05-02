//# pattern-1, witnesses: 22
@@
expression E0;
expression E2;
identifier PV1;
@@
- memcpy_fromiovec(E0, PV1->msg_iov, E2)
+ memcpy_from_msg(E0, PV1, E2)
