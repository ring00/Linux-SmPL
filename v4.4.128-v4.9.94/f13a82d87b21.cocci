//# pattern-1, witnesses: 4
@@
expression EC1;
expression ME2;
identifier PV0;
@@
- nla_put_u64(PV0, EC1, ME2)
+ nla_put_u64_64bit(PV0, EC1, ME2, ILA_ATTR_PAD)
