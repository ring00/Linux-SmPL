//# pattern-5, witnesses: 8
@@
@@
- dst->master_ethtool_ops
+ dst->cpu_dp->ethtool_ops
//# pattern-3, witnesses: 2
@@
identifier cpu_dp;
@@
 int dsa_cpu_port_ethtool_setup(struct dsa_port * cpu_dp)
 {
     <...
- ds->dst->master_ethtool_ops
+ cpu_dp->ethtool_ops
     ...>
 }
