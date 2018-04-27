//# pattern-5, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- __cfg80211_connect_result(E0, mgmt->bssid, NULL, 0, E1, E2, status_code, E3, E4)
+ __cfg80211_connect_result(E0, mgmt->bssid, NULL, 0, E1, E2, status_code, E3, E4, NL80211_TIMEOUT_UNSPECIFIED)
