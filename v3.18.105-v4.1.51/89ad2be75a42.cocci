//# pattern-1, witnesses: 2
@@
@@
+ struct dw_mci_exynos_priv_data * priv = host->priv;
+ if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS7 || priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU) {
+ clksel = mci_readl(host);
+ }
+ if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS7 || priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU) {
+ mci_writel(host, );
+ }
