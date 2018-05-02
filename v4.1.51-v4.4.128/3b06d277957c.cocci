//# pattern-4, witnesses: 3
@@
identifier fn;
identifier ies;
identifier req;
identifier wl;
identifier wlvif;
@@
 int fn(struct wl1271 * wl, struct wl12xx_vif * wlvif, struct cfg80211_sched_scan_request * req, struct ieee80211_scan_ies * ies)
 {
     <...
- (req->interval)
+ (req->scan_plans[0].interval * 1000)
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier PV0;
@@
- PV0->interval / 1000
+ PV0->scan_plans[0].interval
