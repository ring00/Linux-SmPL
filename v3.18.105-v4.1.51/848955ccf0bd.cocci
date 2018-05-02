//# pattern-2, witnesses: 3
@@
expression E0;
@@
- IEEE80211_VIF_BEACON_FILTER | E0
+ IEEE80211_VIF_BEACON_FILTER | IEEE80211_VIF_SUPPORTS_UAPSD | E0
//# pattern-7, witnesses: 3
@@
expression E0;
expression E3;
expression EC1;
expression EC2;
@@
- E0 | EC1 | EC2 | IEEE80211_HW_SUPPORTS_UAPSD | E3
+ E0 | EC1 | EC2 | E3
