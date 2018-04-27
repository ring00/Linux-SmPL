//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- lwtunnel_valid_encap_type_attr(E0, E1)
+ lwtunnel_valid_encap_type_attr(E0, E1, extack)
//# pattern-4, witnesses: 2
@@
@@
- lwtunnel_valid_encap_type(cfg->fc_encap_type)
+ lwtunnel_valid_encap_type(cfg->fc_encap_type, extack)
