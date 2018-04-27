//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0->flags & IEEE80211_SDATA_MU_MIMO_OWNER
+ E0->vif.mu_mimo_owner
//# pattern-3, witnesses: 2
@@
@@
- sdata->flags &= ~IEEE80211_SDATA_MU_MIMO_OWNER;
+ sdata->vif.mu_mimo_owner = false;
