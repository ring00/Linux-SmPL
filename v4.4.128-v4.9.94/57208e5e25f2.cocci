//# pattern-1, witnesses: 7
@@
expression E0;
@@
- link = &E0->links[i];
//# pattern-2, witnesses: 2
@@
@@
- int i = i;
+ int ret = ret;
//# pattern-9, witnesses: 2
@@
@@
- struct media_link * links = links;
- links = kzalloc(max_links * sizeof(unsigned long), GFP_KERNEL);
//# pattern-18, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier graph;
@@
 struct media_entity * media_entity_graph_walk_next(struct media_entity_graph * graph)
 {
     <...
- _ ++link_top(graph);
+ link_top(graph) = link_top(graph)->next;
     ...>
 }
