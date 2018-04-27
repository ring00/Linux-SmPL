//# pattern-15, witnesses: 4
@@
expression E0;
@@
- ovs_nla_get_match(&match, a[OVS_FLOW_ATTR_KEY], E0, log)
+ ovs_nla_get_match(net, &match, a[OVS_FLOW_ATTR_KEY], E0, log)
