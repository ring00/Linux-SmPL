//# pattern-9, witnesses: 23
@@
expression list listE0;
@@
- global_page_state(listE0)
+ global_node_page_state(listE0)
//# pattern-1, witnesses: 9
@@
expression EC0;
@@
- sum_zone_node_page_state(nid, EC0)
+ node_page_state(pgdat, EC0)
//# pattern-15, witnesses: 9
@@
expression list listE0;
@@
- __inc_zone_page_state(listE0)
+ __inc_node_page_state(listE0)
//# pattern-7, witnesses: 8
@@
expression list listE0;
@@
- __dec_zone_page_state(listE0)
+ __dec_node_page_state(listE0)
//# pattern-2, witnesses: 4
@@
expression list listE0;
@@
- dec_zone_page_state(listE0)
+ dec_node_page_state(listE0)
//# pattern-5, witnesses: 4
@@
expression E1;
expression EC0;
@@
- __mod_zone_page_state(page_zone(page), EC0, E1)
+ __mod_node_page_state(page_pgdat(page), EC0, E1)
//# pattern-3, witnesses: 3
@@
expression list listE0;
@@
- inc_zone_page_state(listE0)
+ inc_node_page_state(listE0)
//# pattern-4, witnesses: 2
@@
expression EC0;
@@
- __mod_zone_page_state(zone, EC0, nr_none)
+ __mod_node_page_state(zone->zone_pgdat, EC0, nr_none)
//# pattern-10, witnesses: 2
@@
expression EC0;
@@
- __inc_zone_state(newzone, EC0)
+ __inc_node_state(newzone->zone_pgdat, EC0)
//# pattern-11, witnesses: 2
@@
expression EC0;
@@
- __dec_zone_state(oldzone, EC0)
+ __dec_node_state(oldzone->zone_pgdat, EC0)
//# pattern-12, witnesses: 2
@@
expression EC0;
identifier fn;
identifier page;
@@
 int fn(struct page * page)
 {
     <...
- dec_zone_page_state(page, EC0);
+ dec_node_page_state(page, EC0);
+ dec_zone_page_state(page, NR_ZONE_WRITE_PENDING);
     ...>
 }
