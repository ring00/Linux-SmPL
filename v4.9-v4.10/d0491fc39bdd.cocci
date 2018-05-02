//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct qcom_pcie_ops s = {
+    .ltssm_enable = qcom_pcie_v0_v1_ltssm_enable,
 };
