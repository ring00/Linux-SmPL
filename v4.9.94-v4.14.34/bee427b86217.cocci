//# pattern-2, witnesses: 2
@@
expression EC0;
identifier priv;
@@
 int mwifiex_process_sta_event(struct mwifiex_private * priv)
 {
     <...
- cfg80211_cqm_rssi_notify(priv->netdev, EC0, GFP_KERNEL)
+ cfg80211_cqm_rssi_notify(priv->netdev, EC0, 0, GFP_KERNEL)
     ...>
 }
