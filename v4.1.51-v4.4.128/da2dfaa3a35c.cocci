//# pattern-1, witnesses: 12
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression E6;
@@
- ib_create_send_mad(E0, E1, E2, E3, E4, E5, E6)
+ ib_create_send_mad(E0, E1, E2, E3, E4, E5, E6, IB_MGMT_BASE_VERSION)
