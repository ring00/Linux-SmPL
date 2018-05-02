//# pattern-4, witnesses: 2
@@
identifier enable;
identifier priv;
@@
 int tdma_enable_set(struct bcm_sysport_priv * priv, unsigned int enable)
 {
     <...
- TDMA_EN
+ tdma_control_bit(priv, TDMA_EN)
     ...>
 }
//# pattern-27, witnesses: 2
@@
@@
- TSB_EN
+ tdma_control_bit(priv, TSB_EN)
