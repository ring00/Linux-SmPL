//# pattern-2, witnesses: 4
@@
expression E0;
expression EC1;
@@
- ieee80211_cqm_rssi_notify(E0, EC1, GFP_KERNEL)
+ ieee80211_cqm_rssi_notify(E0, EC1, sig, GFP_KERNEL)
//# pattern-3, witnesses: 2
@@
expression EC0;
identifier mbox;
identifier wl;
@@
 int wl1251_event_process(struct wl1251 * wl, struct event_mailbox * mbox)
 {
     <...
- ieee80211_cqm_rssi_notify(wl->vif, EC0, GFP_KERNEL)
+ ieee80211_cqm_rssi_notify(wl->vif, EC0, 0, GFP_KERNEL)
     ...>
 }
