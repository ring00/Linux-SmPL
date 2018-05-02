//# pattern-2, witnesses: 2
@@
expression E3;
expression ME1;
expression ME2;
expression V0;
@@
- ieee80211_amsdu_to_8023s(skb, &V0, ME1, ME2, E3)
+ ieee80211_amsdu_to_8023s(skb, &V0, ME1, ME2, E3, NULL, NULL)
