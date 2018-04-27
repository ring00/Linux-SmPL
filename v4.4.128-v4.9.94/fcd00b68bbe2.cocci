//# pattern-12, witnesses: 3
@@
expression V0;
@@
- __lookup_generic_req(monc, V0)
+ lookup_generic_request(&monc->generic_request_tree, V0)
//# pattern-8, witnesses: 2
@@
@@
- __lookup_request(osdc, tid)
+ lookup_request(&osdc->requests, tid)
//# pattern-15, witnesses: 2
@@
expression list listE0;
@@
- __lookup_request(listE0)
+ lookup_get_request(listE0)
