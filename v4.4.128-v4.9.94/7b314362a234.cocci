//# pattern-3, witnesses: 2
@@
expression E0;
@@
- dst->tag_ops = dsa_resolve_tag_protocol(E0->tag_protocol);
+ enum dsa_tag_protocol tag_protocol = tag_protocol;
+ tag_protocol = E0->get_tag_protocol(ds);
+ dst->tag_ops = dsa_resolve_tag_protocol(tag_protocol);
