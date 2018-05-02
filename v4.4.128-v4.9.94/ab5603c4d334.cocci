//# pattern-1, witnesses: 2
@@
expression E0;
identifier connector;
identifier fn;
@@
 int fn(struct drm_connector * connector)
 {
     <...
- E0 = connector->max_tmds_clock * 1000
+ E0 = connector->max_tmds_clock
     ...>
 }
