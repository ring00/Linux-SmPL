//# pattern-2, witnesses: 2
@@
identifier s;
@@
 const struct nft_expr_ops s = {
+    .validate = nft_meta_set_validate,
 };
