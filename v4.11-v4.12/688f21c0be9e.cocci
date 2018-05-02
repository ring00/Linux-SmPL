//# pattern-1, witnesses: 3
@@
@@
- struct hfi1_qp_priv * priv = qp->priv;
- priv->r_adefered = 0;
+ qp->r_adefered = 0;
