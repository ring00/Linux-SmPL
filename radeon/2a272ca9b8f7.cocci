//# pattern-5, witnesses: 2
@@
expression E0;
identifier connector;
identifier fn;
@@
 int fn(struct drm_connector * connector)
 {
     <...
- E0 = connector->max_tmds_clock
+ E0 = connector->display_info.max_tmds_clock
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression E0;
identifier connector;
identifier fn;
@@
 int fn(struct drm_connector * connector)
 {
     <...
- connector->max_tmds_clock > E0
+ connector->display_info.max_tmds_clock > E0
     ...>
 }
