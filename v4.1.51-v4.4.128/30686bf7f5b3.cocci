//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->flags |= E1;
+ ieee80211_hw_set(E0);
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- hw->flags |= E0;
+ ieee80211_hw_set(hw);
//# pattern-11, witnesses: 2
@@
expression E0;
@@
- hw->flags |= E0;
+ ieee80211_hw_set(hw);
