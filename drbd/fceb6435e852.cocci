//# pattern-1, witnesses: 50
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- nla_parse_nested(E0, E1, E2, E3)
+ nla_parse_nested(E0, E1, E2, E3, NULL)
//# pattern-5, witnesses: 40
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- nlmsg_parse(E0, E1, E2, E3, E4)
+ nlmsg_parse(E0, E1, E2, E3, E4, NULL)
//# pattern-2, witnesses: 12
@@
expression E0;
expression E1;
expression E2;
expression V3;
@@
- nla_parse(tb, E0, E1, E2, V3)
+ nla_parse(tb, E0, E1, E2, V3, NULL)
//# pattern-6, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- nlmsg_validate(E0, E1, E2, E3)
+ nlmsg_validate(E0, E1, E2, E3, NULL)
