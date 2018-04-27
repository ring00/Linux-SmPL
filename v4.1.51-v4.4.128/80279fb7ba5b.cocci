//# pattern-5, witnesses: 6
@@
expression E0;
expression E1;
@@
- cfg80211_disconnected(E0, E1, NULL, 0, GFP_KERNEL)
+ cfg80211_disconnected(E0, E1, NULL, 0, true, GFP_KERNEL)
//# pattern-1, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
@@
- cfg80211_disconnected(E0, E1, NULL, 0, E2)
+ cfg80211_disconnected(E0, E1, NULL, 0, false, E2)
//# pattern-2, witnesses: 2
@@
@@
- lbs_mac_event_disconnected(priv)
+ lbs_mac_event_disconnected(priv, true)
//# pattern-3, witnesses: 2
@@
identifier event;
identifier priv;
typedef u32;
@@
 int lbs_process_event(struct lbs_private * priv, u32 event)
 {
     <...
- lbs_mac_event_disconnected(priv)
+ lbs_mac_event_disconnected(priv, false)
     ...>
 }
