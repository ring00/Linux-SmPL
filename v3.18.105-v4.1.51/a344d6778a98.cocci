//# pattern-1, witnesses: 8
@r0@
identifier i, fn;
@@
struct ieee80211_ops i = {
    .sw_scan_start = fn,
};
@@
identifier hw;
identifier r0.fn;
@@
- void fn(struct ieee80211_hw * hw)
+ void fn(struct ieee80211_hw * hw, struct ieee80211_vif * vif, const u8 * mac_addr)
 { ... }
//# pattern-2, witnesses: 8
@r1@
identifier i, fn;
@@
struct ieee80211_ops i = {
    .sw_scan_complete = fn,
};
@@
identifier hw;
identifier r1.fn;
@@
- void fn(struct ieee80211_hw * hw)
+ void fn(struct ieee80211_hw * hw, struct ieee80211_vif * vif)
 { ... }
//# pattern-3, witnesses: 2
@@
expression E1;
expression E2;
expression E3;
identifier PV0;
@@
- ieee80211_probereq_get(PV0->hw, vif, E1, E2, E3)
+ ieee80211_probereq_get(PV0->hw, vif->addr, E1, E2, E3)
//# pattern-4, witnesses: 2
@@
expression V0;
@@
- V0->vif
+ V0->vif->addr
