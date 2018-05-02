//# pattern-1, witnesses: 2
@@
expression E0;
expression V1;
identifier data;
identifier dev;
identifier file_priv;
identifier fn;
@@
 int fn(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- E0 = V1->possible_crtcs
+ E0 = drm_lease_filter_crtcs(file_priv, V1->possible_crtcs)
     ...>
 }
