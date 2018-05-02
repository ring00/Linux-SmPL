//# pattern-1, witnesses: 10
@@
expression ME0;
@@
- ME0.ipv4_dst
+ ME0.u.ipv4.dst
//# pattern-2, witnesses: 4
@@
expression V0;
@@
- V0->ipv4_dst
+ V0->u.ipv4.dst
//# pattern-6, witnesses: 4
@@
expression V0;
@@
- V0->key.ipv4_src
+ V0->key.u.ipv4.src
