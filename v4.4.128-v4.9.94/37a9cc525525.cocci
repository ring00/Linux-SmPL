//# pattern-8, witnesses: 6
@@
expression E0;
expression EC2;
identifier PV1;
@@
- nf_tables_set_lookup(E0, PV1[EC2])
+ nf_tables_set_lookup(E0, PV1[EC2], genmask)
//# pattern-1, witnesses: 3
@@
expression E0;
expression EC2;
identifier PV1;
@@
- nf_tables_set_lookup_byid(E0, PV1[EC2])
+ nf_tables_set_lookup_byid(E0, PV1[EC2], genmask)
//# pattern-7, witnesses: 3
@@
expression EC0;
@@
- set = nf_tables_set_lookup(ctx.table, nla[EC0]);
- if (set->flags & NFT_SET_INACTIVE) {
- return -ENOENT;
- }
+ set = nf_tables_set_lookup(ctx.table, nla[EC0], genmask);
