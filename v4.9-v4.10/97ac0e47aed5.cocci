//# pattern-1, witnesses: 5
@@
expression list listE0;
@@
- component_match_add(listE0)
+ drm_of_component_match_add(listE0)
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct platform_driver i = {
    .probe = fn,
};
@@
expression F0;
identifier pdev;
identifier r0.fn;
@@
 int fn(struct platform_device * pdev)
 {
     <...
- component_match_add(&pdev->dev, &match, F0, port);
+ drm_of_component_match_add(&pdev->dev, &match, F0, port);
+ of_node_put(port);
     ...>
 }
