//# pattern-1, witnesses: 10
@r0@
identifier i, fn;
@@
struct ieee80211_ops i = {
    .ampdu_action = fn,
};
@@
identifier action;
typedef bool;
identifier buf_size;
identifier hw;
identifier r0.fn;
identifier ssn;
identifier sta;
identifier tid;
typedef u16;
typedef u8;
identifier vif;
@@
- int fn(struct ieee80211_hw * hw, struct ieee80211_vif * vif, enum ieee80211_ampdu_mlme_action action, struct ieee80211_sta * sta, u16 tid, u16 * ssn, u8 buf_size)
+ int fn(struct ieee80211_hw * hw, struct ieee80211_vif * vif, enum ieee80211_ampdu_mlme_action action, struct ieee80211_sta * sta, u16 tid, u16 * ssn, u8 buf_size, bool amsdu)
 { ... }
//# pattern-3, witnesses: 3
@r1@
identifier i, fn;
@@
struct ieee80211_ops i = {
    .ampdu_action = fn,
};
@@
identifier action;
identifier amsdu;
typedef bool;
identifier buf_size;
identifier hw;
identifier r1.fn;
identifier ssn;
identifier sta;
identifier tid;
typedef u16;
typedef u8;
identifier vif;
@@
 int fn(struct ieee80211_hw * hw, struct ieee80211_vif * vif, enum ieee80211_ampdu_mlme_action action, struct ieee80211_sta * sta, u16 tid, u16 * ssn, u8 buf_size, bool amsdu)
 { ... }
