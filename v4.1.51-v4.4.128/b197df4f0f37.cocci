//# pattern-1, witnesses: 3
@@
expression ME0;
@@
- if (rt->rt6i_node) {
- ME0 = rt->rt6i_node->fn_sernum;
- }
+ ME0 = rt6_get_cookie(rt);
//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0 = 
+ E0 = rt6_get_cookie(rt)
