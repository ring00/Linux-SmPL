//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 | SKB_GSO_DODGY | SKB_GSO_TCP_ECN | E1
+ E0 | SKB_GSO_DODGY | SKB_GSO_TCP_ECN | SKB_GSO_TCP_FIXEDID | E1
//# pattern-11, witnesses: 2
@@
expression E0;
expression E3;
expression EC1;
expression EC2;
@@
- E0 | SKB_GSO_TCPV6 | EC1 | EC2 | E3
+ E0 | SKB_GSO_TCPV6 | EC1 | EC2 | SKB_GSO_TCP_FIXEDID | E3
