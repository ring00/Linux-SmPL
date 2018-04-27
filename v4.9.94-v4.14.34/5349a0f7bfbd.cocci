//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- __cfg80211_connect_result(wdev->netdev, E0, NULL, 0, NULL, 0, E1, false, NULL, E2);
+ struct cfg80211_connect_resp_params cr = cr;
+ memset(&cr, );
+ cr.status = E1;
+ cr.bssid = E0;
+ cr.timeout_reason = E2;
+ __cfg80211_connect_result(wdev->netdev, &cr, false);
