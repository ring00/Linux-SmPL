//# pattern-1, witnesses: 4
@@
expression EC0;
@@
- sum_zone_node_page_state(nid, EC0)
+ node_page_state(pgdat, EC0)
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- mod_zone_page_state(page_zone(page), , E0)
+ mod_node_page_state(page_pgdat(page), , E0)
