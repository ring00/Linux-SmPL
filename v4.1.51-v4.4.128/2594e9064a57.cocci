//# pattern-15, witnesses: 2
@@
@@
- unsigned short vid = VLAN_N_VID;
- struct net_port_vlans * pv = pv;
- pv = nbp_get_vlan_info(p);
- if (br_vlan_enabled(br) && pv && entry->vid == 0) {
- }
+ struct net_bridge_vlan_group * vg = vg;
+ struct net_bridge_vlan * v = v;
+ vg = nbp_vlan_group(p);
+ if (br_vlan_enabled(br) && vg && entry->vid == 0) {
+ }
//# pattern-40, witnesses: 2
@@
@@
- -EINVAL
+ -ENOENT
//# pattern-43, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P2;
@@
br_flood(P0, P1, P2, fn)
@@
identifier r0.fn;
identifier skb;
identifier to;
@@
 void fn(const struct net_bridge_port * to, struct sk_buff * skb)
 {
     <...
- skb = br_handle_vlan(to->br, nbp_get_vlan_info(to), skb);
+ struct net_bridge_vlan_group * vg = vg;
+ vg = nbp_vlan_group(to);
+ skb = br_handle_vlan(to->br, vg, skb);
     ...>
 }
