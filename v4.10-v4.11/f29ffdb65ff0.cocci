//# pattern-18, witnesses: 3
@@
expression E0;
identifier edev;
identifier fn;
identifier info;
@@
 int fn(struct qede_dev * edev, struct ethtool_rxnfc * info)
 {
     <...
- edev->rss_params.rss_caps & E0
+ edev->rss_caps & E0
     ...>
 }
//# pattern-13, witnesses: 2
@@
@@
- edev->rss_params.rss_key
+ edev->rss_key
//# pattern-24, witnesses: 2
@@
@@
- edev->rss_params.rss_ind_table
+ edev->rss_ind_table
