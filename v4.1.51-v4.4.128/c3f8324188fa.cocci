//# pattern-5, witnesses: 4
@@
expression E0;
@@
- E0->addrs
+ E0->addrs.v4addrs
//# pattern-6, witnesses: 2
@@
@@
- key->basic.n_proto == htons(ETH_P_IPV6)
+ key->control.addr_type == FLOW_DISSECTOR_KEY_IPV6_ADDRS
//# pattern-11, witnesses: 2
@@
@@
- key->basic.n_proto == htons(ETH_P_IP)
+ key->control.addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS
