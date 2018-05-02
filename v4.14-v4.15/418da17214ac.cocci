//# pattern-1, witnesses: 15
@@
expression E0;
expression E1;
@@
- drm_encoder_find(E0, E1)
+ drm_encoder_find(E0, NULL, E1)
//# pattern-2, witnesses: 7
@@
expression E0;
@@
- drm_crtc_find(dev, E0->crtc_id)
+ drm_crtc_find(dev, file_priv, E0->crtc_id)
//# pattern-3, witnesses: 6
@@
expression E0;
identifier data;
identifier dev;
identifier file_priv;
identifier fn;
@@
 int fn(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- drm_framebuffer_lookup(dev, E0)
+ drm_framebuffer_lookup(dev, file_priv, E0)
     ...>
 }
//# pattern-9, witnesses: 3
@@
expression E0;
expression E1;
identifier data;
identifier dev;
identifier file_priv;
identifier fn;
@@
 int fn(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- drm_mode_object_find(dev, E0, E1)
+ drm_mode_object_find(dev, file_priv, E0, E1)
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression V0;
identifier data;
identifier dev;
identifier file_priv;
identifier fn;
@@
 int fn(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- drm_plane_find(dev, V0->plane_id)
+ drm_plane_find(dev, file_priv, V0->plane_id)
     ...>
 }
//# pattern-5, witnesses: 2
@@
@@
- drm_crtc_find(dev, val)
+ drm_crtc_find(dev, NULL, val)
//# pattern-6, witnesses: 2
@@
expression E0;
identifier data;
identifier dev;
identifier file_priv;
identifier fn;
@@
 int fn(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- drm_connector_lookup(dev, E0)
+ drm_connector_lookup(dev, file_priv, E0)
     ...>
 }
