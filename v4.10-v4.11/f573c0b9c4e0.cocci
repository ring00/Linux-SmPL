//# pattern-1, witnesses: 3
@@
@@
- priv->stmmac_clk
+ priv->plat->stmmac_clk
//# pattern-9, witnesses: 3
@@
@@
- priv->pclk
+ priv->plat->pclk
//# pattern-10, witnesses: 3
@@
@@
- priv->stmmac_clk
+ priv->plat->stmmac_clk
//# pattern-2, witnesses: 2
@@
identifier priv;
@@
 void stmmac_release_ptp(struct stmmac_priv * priv)
 {
     <...
- priv->clk_ptp_ref
+ priv->plat->clk_ptp_ref
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
- priv->stmmac_rst
+ priv->plat->stmmac_rst
//# pattern-6, witnesses: 2
@@
@@
- priv->clk_ptp_rate
+ priv->plat->clk_ptp_rate
