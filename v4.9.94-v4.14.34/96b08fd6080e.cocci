//# pattern-6, witnesses: 2
@@
expression EC0;
@@
- nl80211_send_sched_scan(rdev, dev, EC0)
+ nl80211_send_sched_scan(sched_scan_req, EC0)
