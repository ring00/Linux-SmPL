//# pattern-2, witnesses: 3
@@
expression V0;
@@
- if (skip_txen_test) {
- V0->port.flags |= UPF_NO_TXEN_TEST;
- }
+ serial8250_apply_quirks(V0);
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0.flags
+ E0.quirks
//# pattern-3, witnesses: 2
@@
@@
- UPF_NO_TXEN_TEST
+ UPQ_NO_TXEN_TEST
