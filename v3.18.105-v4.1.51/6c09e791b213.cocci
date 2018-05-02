//# pattern-1, witnesses: 2
@@
expression E0;
expression EC1;
@@
- cfg80211_vendor_event_alloc(wl->hw->wiphy, E0, EC1, GFP_KERNEL)
+ cfg80211_vendor_event_alloc(wl->hw->wiphy, NULL, E0, EC1, GFP_KERNEL)
