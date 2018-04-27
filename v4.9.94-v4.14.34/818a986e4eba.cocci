//# pattern-10, witnesses: 4
@r0@
identifier i, fn;
@@
struct cfg80211_ops i = {
    .change_virtual_intf = fn,
};
@@
identifier dev;
identifier flags;
identifier params;
identifier r0.fn;
identifier type;
identifier wiphy;
@@
- int fn(struct wiphy * wiphy, struct net_device * dev, enum nl80211_iftype type, u32 * flags, struct vif_params * params)
+ int fn(struct wiphy * wiphy, struct net_device * dev, enum nl80211_iftype type, struct vif_params * params)
 { ... }
//# pattern-1, witnesses: 3
@@
expression EC1;
expression S0;
@@
- mwifiex_add_virtual_intf(adapter->wiphy, S0, NET_NAME_ENUM, EC1, NULL, NULL)
+ mwifiex_add_virtual_intf(adapter->wiphy, S0, NET_NAME_ENUM, EC1, NULL)
//# pattern-16, witnesses: 3
@r1@
identifier i, fn;
@@
struct cfg80211_ops i = {
    .change_virtual_intf = fn,
};
@@
identifier dev;
identifier params;
identifier type;
identifier wiphy;
@@
 int mwifiex_cfg80211_change_virtual_intf(struct wiphy * wiphy, struct net_device * dev, enum nl80211_iftype type, struct vif_params * params)
 {
     <...
- mwifiex_change_vif_to_p2p(dev, curr_iftype, type, flags, params)
+ mwifiex_change_vif_to_p2p(dev, curr_iftype, type, params)
     ...>
 }
//# pattern-17, witnesses: 3
@r2@
identifier i, fn;
@@
struct cfg80211_ops i = {
    .change_virtual_intf = fn,
};
@@
identifier dev;
identifier params;
identifier type;
identifier wiphy;
@@
 int mwifiex_cfg80211_change_virtual_intf(struct wiphy * wiphy, struct net_device * dev, enum nl80211_iftype type, struct vif_params * params)
 {
     <...
- mwifiex_change_vif_to_ap(dev, curr_iftype, type, flags, params)
+ mwifiex_change_vif_to_ap(dev, curr_iftype, type, params)
     ...>
 }
//# pattern-2, witnesses: 2
@r3@
identifier i, fn;
@@
struct cfg80211_ops i = {
    .change_virtual_intf = fn,
};
@@
identifier dev;
identifier params;
identifier type;
identifier wiphy;
@@
 int ieee80211_change_iface(struct wiphy * wiphy, struct net_device * dev, enum nl80211_iftype type, struct vif_params * params)
 {
     <...
- sdata->u.mntr.flags = *flags
+ sdata->u.mntr.flags = params->flags
     ...>
 }
//# pattern-3, witnesses: 2
@r4@
identifier i, fn;
@@
struct cfg80211_ops i = {
    .change_virtual_intf = fn,
};
@@
identifier dev;
identifier params;
identifier type;
identifier wiphy;
@@
 int mwifiex_cfg80211_change_virtual_intf(struct wiphy * wiphy, struct net_device * dev, enum nl80211_iftype type, struct vif_params * params)
 {
     <...
- mwifiex_change_vif_to_sta_adhoc(dev, curr_iftype, type, flags, params)
+ mwifiex_change_vif_to_sta_adhoc(dev, curr_iftype, type, params)
     ...>
 }
//# pattern-8, witnesses: 2
@r5@
identifier i, fn;
@@
struct cfg80211_ops i = {
    .change_virtual_intf = fn,
};
@@
identifier ndev;
identifier params;
identifier r5.fn;
identifier type;
identifier wiphy;
@@
 int fn(struct wiphy * wiphy, struct net_device * ndev, enum nl80211_iftype type, struct vif_params * params)
 { ... }
//# pattern-11, witnesses: 2
@@
expression E1;
expression V0;
expression V2;
@@
- cfg80211_change_iface(rdev, dev, V0, E1, &V2)
+ cfg80211_change_iface(rdev, dev, V0, &V2)
