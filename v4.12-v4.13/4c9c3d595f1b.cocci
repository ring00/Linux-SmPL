//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier node;
identifier r0.fn;
@@
- struct device_node * fn(const struct device_node * node)
+ struct device_node * fn(const struct device_node * node)
 {
     <...
- of_parse_phandle(node, "remote-endpoint", 0)
+ of_graph_get_remote_endpoint(node)
     ...>
 }
