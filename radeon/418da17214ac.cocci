//# pattern-1, witnesses: 29
@@
expression E0;
expression E1;
@@
- drm_encoder_find(E0, E1)
+ drm_encoder_find(E0, NULL, E1)
//# pattern-4, witnesses: 10
@@
expression E0;
@@
- drm_crtc_find(dev, E0->crtc_id)
+ drm_crtc_find(dev, file_priv, E0->crtc_id)
//# pattern-2, witnesses: 8
@r0@
identifier i, fn;
@@
struct drm_ioctl_desc i = {
    .func = fn,
};
@@
expression E0;
identifier data;
identifier dev;
identifier file_priv;
identifier r0.fn;
@@
 int fn(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- drm_framebuffer_lookup(dev, E0)
+ drm_framebuffer_lookup(dev, file_priv, E0)
     ...>
 }
//# pattern-5, witnesses: 3
@r1@
identifier i, fn;
@@
struct drm_ioctl_desc i = {
    .func = fn,
};
@@
expression V0;
identifier data;
identifier dev;
identifier file_priv;
identifier r1.fn;
@@
 int fn(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- drm_plane_find(dev, V0->plane_id)
+ drm_plane_find(dev, file_priv, V0->plane_id)
     ...>
 }
//# pattern-10, witnesses: 3
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
//# pattern-6, witnesses: 2
@@
@@
- drm_crtc_find(dev, val)
+ drm_crtc_find(dev, NULL, val)
//# pattern-7, witnesses: 2
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
//# pattern-11, witnesses: 2
@@
@@
- drm_crtc_find(p->rdev->ddev, crtc_id)
+ drm_crtc_find(p->rdev->ddev, p->filp, crtc_id)
//# pattern-12, witnesses: 2
@@
expression E0;
expression E2;
identifier PV1;
@@
- __drm_mode_object_find(E0, PV1, E2)
+ __drm_mode_object_find(E0, NULL, PV1, E2)
