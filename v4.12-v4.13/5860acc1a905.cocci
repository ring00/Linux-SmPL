//# pattern-1, witnesses: 3
@@
identifier s;
@@
 const struct dma_map_ops s = {
+    .dma_supported = x86_dma_supported,
 };
