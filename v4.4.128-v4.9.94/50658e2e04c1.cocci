//# pattern-3, witnesses: 5
@@
expression E1;
expression EC0;
@@
- __mod_zone_page_state(page_zone(page), EC0, E1)
+ __mod_node_page_state(page_pgdat(page), EC0, E1)
//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- global_page_state(listE0)
+ global_node_page_state(listE0)
//# pattern-2, witnesses: 2
@@
expression EC0;
@@
- sum_zone_node_page_state(nid, EC0)
+ node_page_state(pgdat, EC0)
