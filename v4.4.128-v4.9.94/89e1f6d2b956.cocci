//# pattern-3, witnesses: 3
@@
identifier s;
@@
 const struct nft_expr_ops s = {
+    .validate = nft_reject_validate,
 };
