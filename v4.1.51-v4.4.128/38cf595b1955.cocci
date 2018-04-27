//# pattern-3, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
@@
- ndisc_send_ns(E0, E1, E2, E3, E4, E5)
+ ndisc_send_ns(E0, E2, E3, E4, E5)
//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
expression E3;
expression E5;
expression E6;
expression EC4;
expression ME2;
@@
- ndisc_send_na(dev, E0, E1, &ME2, !!E3, EC4, E5, E6)
+ ndisc_send_na(dev, E1, &ME2, !!E3, EC4, E5, E6)
