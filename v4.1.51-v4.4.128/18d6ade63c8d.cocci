//# pattern-1, witnesses: 13
@@
expression E0;
@@
- ip_vs_proto_data_get(net, E0)
+ ip_vs_proto_data_get(ipvs, E0)
//# pattern-4, witnesses: 4
@@
expression EC0;
@@
- ip_vs_proto_data_get(net, EC0)
+ ip_vs_proto_data_get(net_ipvs(net), EC0)
//# pattern-3, witnesses: 2
@@
identifier PV0;
@@
- PV0->ipvs->net
+ PV0->ipvs
