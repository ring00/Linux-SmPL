//# pattern-3, witnesses: 3
@@
expression ME0;
expression ME1;
@@
- const struct isp_v4l2_subdevs_group * pdata = pdata;
- pdata = sensor->host_priv;
- ME0 = ME1;
+ const struct isp_bus_cfg * buscfg = buscfg;
+ buscfg = sensor->host_priv;
+ ME0 = ME1;
//# pattern-15, witnesses: 3
@@
expression V0;
@@
- V0->bus
+ buscfg->bus
//# pattern-6, witnesses: 2
@@
expression EC0;
identifier fn;
identifier phy;
@@
 void fn(struct isp_csiphy * phy)
 {
     <...
- struct isp_v4l2_subdevs_group * subdevs = pipe->external->host_priv;
- csiphy_routing_cfg(phy, subdevs->interface, EC0, subdevs->bus.ccp2.phy_layer);
+ struct isp_bus_cfg * buscfg = pipe->external->host_priv;
+ csiphy_routing_cfg(phy, buscfg->interface, EC0, buscfg->bus.ccp2.phy_layer);
     ...>
 }
