//# pattern-1, witnesses: 5
@r0@
identifier i, fn;
@@
struct dsa_switch_driver i = {
    .setup = fn,
};
@@
identifier ds;
@@
 int bcm_sf2_sw_setup(struct dsa_switch * ds)
 {
     <...
- const char *[6] reg_names = BCM_SF2_REGS_NAME;
- struct device_node * dn = dn;
- void ** base = base;
- unsigned int i = i;
- int ret = ret;
- dn = ds->cd->of_node->parent;
- base = &priv->core;
- ret = bcm_sf2_sw_rst(priv);
     ...>
 }
//# pattern-10, witnesses: 4
@@
expression E0;
@@
- u32 reg = reg;
- reg = core_readl(priv, CORE_GMNCFGCFG);
- E0;
//# pattern-6, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- u32 reg = reg;
- rev = reg_readl(priv, REG_SWITCH_REVISION);
- E0 = E1;
- E2 = E3;
//# pattern-7, witnesses: 3
@r1@
identifier i, fn;
@@
struct dsa_switch_driver i = {
    .setup = fn,
};
@@
identifier ds;
@@
 int bcm_sf2_sw_setup(struct dsa_switch * ds)
 {
     <...
- struct device_node * dn = dn;
- dn = ds->cd->of_node->parent;
     ...>
 }
