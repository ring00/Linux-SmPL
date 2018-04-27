//# pattern-1, witnesses: 4
@@
expression E1;
identifier PV0;
@@
- ieee80211_rx_napi(PV0->hw, skb, E1)
+ ieee80211_rx_napi(PV0->hw, NULL, skb, E1)
