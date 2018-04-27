//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct nft_expr_ops s = {
+    .destroy = nft_meta_set_destroy,
 };
