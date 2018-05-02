//# pattern-3, witnesses: 4
@@
expression IL0;
identifier data;
identifier dev;
identifier file_priv;
@@
 int drm_legacy_lock(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- sigaddset(&dev->sigmask, IL0);
     ...>
 }
