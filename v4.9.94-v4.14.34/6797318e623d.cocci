//# pattern-1, witnesses: 2
@@
expression E0;
expression E4;
expression ME1;
expression ME2;
expression ME3;
@@
- tcp_md5_do_add(E0, &ME1, AF_INET6, ME2, ME3, E4)
+ tcp_md5_do_add(E0, &ME1, AF_INET6, 128, ME2, ME3, E4)
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
expression E4;
expression ME2;
expression ME3;
@@
- tcp_md5_do_add(E0, &E1, AF_INET, ME2, ME3, E4)
+ tcp_md5_do_add(E0, &E1, AF_INET, 32, ME2, ME3, E4)
