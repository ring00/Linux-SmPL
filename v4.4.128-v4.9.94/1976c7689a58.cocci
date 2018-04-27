//# pattern-3, witnesses: 5
@@
expression EC0;
@@
- ieee80211_destroy_assoc_data(sdata, EC0)
+ ieee80211_destroy_assoc_data(sdata, EC0, false)
//# pattern-4, witnesses: 3
@@
@@
- ieee80211_destroy_assoc_data(sdata, false)
+ ieee80211_destroy_assoc_data(sdata, false, true)
