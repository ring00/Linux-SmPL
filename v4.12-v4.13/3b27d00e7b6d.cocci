//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier endpoint;
identifier fwnode;
@@
- int fwnode_graph_parse_endpoint(struct fwnode_handle * fwnode, struct fwnode_endpoint * endpoint)
+ int fwnode_graph_parse_endpoint(struct fwnode_handle * fwnode, struct fwnode_endpoint * endpoint)
 {
     <...
- struct fwnode_handle * port_fwnode = fwnode_get_parent(fwnode);
     ...>
 }
