//# pattern-5, witnesses: 5
@@
expression E0;
identifier dev;
identifier fn;
identifier old_state;
@@
 void fn(struct drm_device * dev, struct drm_atomic_state * old_state)
 {
     <...
- int nconnectors = E0->mode_config.num_connector;
     ...>
 }
//# pattern-1, witnesses: 4
@@
expression E0;
@@
- int nconnectors = E0->mode_config.num_connector;
