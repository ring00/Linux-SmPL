//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct cfg80211_ops i = {
    .sched_scan_stop = fn,
};
@@
identifier ndev;
identifier r0.fn;
typedef u64;
identifier wiphy;
@@
- int fn(struct wiphy * wiphy, struct net_device * ndev)
+ int fn(struct wiphy * wiphy, struct net_device * ndev, u64 reqid)
 { ... }
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- brcmf_cfg80211_sched_scan_stop(E0, E1)
+ brcmf_cfg80211_sched_scan_stop(E0, E1, 0)
