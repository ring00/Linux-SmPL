//# pattern-2, witnesses: 6
@@
expression E1;
identifier PV0;
@@
- ieee80211_nullfunc_get(PV0->hw, E1)
+ ieee80211_nullfunc_get(PV0->hw, E1, false)
