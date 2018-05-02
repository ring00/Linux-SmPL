//# pattern-3, witnesses: 2
@@
expression E0;
expression E2;
expression E3;
expression ME1;
@@
- vxlan6_get_route(vxlan, skb, E0, &ME1, &E2, E3)
+ vxlan6_get_route(vxlan, skb, E0, &ME1, &E2, E3, info)
//# pattern-4, witnesses: 2
@@
@@
- use_cache = use_cache && !skb->mark;
//# pattern-7, witnesses: 2
@@
identifier s;
@@
 bool s = {
 };
