//# pattern-2, witnesses: 2
@@
expression E0;
@@
- ieee80211_cqm_rssi_notify(E0, NL80211_CQM_RSSI_BEACON_LOSS_EVENT, GFP_KERNEL)
+ ieee80211_cqm_beacon_loss_notify(E0, GFP_KERNEL)
