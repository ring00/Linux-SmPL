//# pattern-4, witnesses: 2
@@
@@
- if (ipgre_netlink_encap_parms(data, &ipencap)) {
- int err = ip_tunnel_encap_setup(t, &ipencap);
- }
- ipgre_netlink_parms(dev, data, tb, &p);
+ int err = err;
+ if (ipgre_netlink_encap_parms(data, &ipencap)) {
+ err = ip_tunnel_encap_setup(t, &ipencap);
+ }
+ err = ipgre_netlink_parms(dev, data, tb, &p);
+ if (err < 0) {
+ return err;
+ }
