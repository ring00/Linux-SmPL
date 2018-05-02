//# pattern-3, witnesses: 11
@@
expression V0;
expression V1;
@@
- v4l2_of_parse_endpoint(V0, &V1)
+ v4l2_fwnode_endpoint_parse(of_fwnode_handle(V0), &V1)
//# pattern-5, witnesses: 3
@@
expression list listE0;
@@
- v4l2_of_free_endpoint(listE0)
+ v4l2_fwnode_endpoint_free(listE0)
//# pattern-10, witnesses: 3
@@
@@
- V4L2_ASYNC_MATCH_OF
+ V4L2_ASYNC_MATCH_FWNODE
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- E0->match.of.node = rem
+ E0->match.fwnode.fwnode = of_fwnode_handle(rem)
//# pattern-11, witnesses: 2
@@
expression V0;
@@
- v4l2_of_alloc_parse_endpoint(V0)
+ v4l2_fwnode_endpoint_alloc_parse(of_fwnode_handle(V0))
