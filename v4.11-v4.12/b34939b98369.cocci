//# pattern-1, witnesses: 6
@@
expression E0;
@@
- cfg80211_sched_scan_stopped(E0)
+ cfg80211_sched_scan_stopped(E0, 0)
//# pattern-6, witnesses: 5
@@
expression ME0;
@@
- cfg80211_sched_scan_stopped_rtnl(ME0.wiphy)
+ cfg80211_sched_scan_stopped_rtnl(ME0.wiphy, 0)
//# pattern-4, witnesses: 4
@@
expression E0;
@@
- cfg80211_sched_scan_results(E0)
+ cfg80211_sched_scan_results(E0, 0)
