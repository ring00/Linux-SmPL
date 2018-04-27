//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (sdata->vif.p2p) { S0 }
+ if (sdata->vif.p2p || sdata->vif.driver_flags & IEEE80211_VIF_GET_NOA_UPDATE) { S0 }
