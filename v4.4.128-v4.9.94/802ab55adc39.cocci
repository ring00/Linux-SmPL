//# pattern-8, witnesses: 2
@@
expression E8;
expression EC0;
expression EC1;
expression EC2;
expression EC3;
expression EC4;
expression EC5;
expression EC6;
expression EC7;
@@
- SKB_GSO_TCPV4 | SKB_GSO_UDP | SKB_GSO_DODGY | SKB_GSO_TCP_ECN | EC0 | EC1 | EC2 | EC3 | EC4 | EC5 | EC6 | EC7 | SKB_GSO_TUNNEL_REMCSUM | E8
+ SKB_GSO_TCPV4 | SKB_GSO_UDP | SKB_GSO_DODGY | SKB_GSO_TCP_ECN | EC0 | EC1 | EC2 | EC3 | EC4 | EC5 | EC6 | EC7 | SKB_GSO_TUNNEL_REMCSUM | SKB_GSO_PARTIAL | E8
