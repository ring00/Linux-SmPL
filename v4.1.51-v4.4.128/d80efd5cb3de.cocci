//# pattern-26, witnesses: 6
@@
@@
- vmw_resource_unreserve(res, NULL, 0)
+ vmw_resource_unreserve(res, false, NULL, 0)
//# pattern-20, witnesses: 3
@r0@
identifier i, fn;
@@
struct drm_ioctl_desc i = {
    .func = fn,
};
@@
identifier data;
identifier dev;
identifier file_priv;
@@
 int vmw_context_define_ioctl(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- struct vmw_private * dev_priv = vmw_priv(dev);
- struct vmw_user_context * ctx = ctx;
- int ret = ret;
- if (unlikely(vmw_user_context_size == 0)) {
- vmw_user_context_size = ttm_round_pot(sizeof(unsigned long)) + 128 + ;
- }
- ret = ttm_read_lock(&dev_priv->reservation_sem, true);
- ret = ttm_base_object_init(tfile, &ctx->base, false, VMW_RES_CONTEXT, &vmw_user_context_base_release, NULL);
     ...>
 }
//# pattern-42, witnesses: 3
@@
@@
- VMW_CMDBUF_RES_COMMITED
+ VMW_CMDBUF_RES_COMMITTED
//# pattern-8, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E6;
expression V5;
@@
- vmw_surface_gb_priv_define(E0, 0, E1, E2, true, E3, E4, V5, E6)
+ vmw_surface_gb_priv_define(E0, 0, E1, E2, true, E3, E4, 0, V5, E6)
//# pattern-17, witnesses: 2
@r1@
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
identifier r1.fn;
@@
 int fn(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- struct vmw_private * dev_priv = vmw_priv(dev);
- E0;
     ...>
 }
//# pattern-21, witnesses: 2
@r2@
identifier i, fn;
@@
struct drm_ioctl_desc i = {
    .func = fn,
};
@@
identifier data;
identifier dev;
identifier file_priv;
identifier r2.fn;
@@
 int fn(struct drm_device * dev, void * data, struct drm_file * file_priv)
 {
     <...
- struct ttm_object_file * tfile = vmw_fpriv(file_priv)->tfile;
     ...>
 }
//# pattern-25, witnesses: 2
@@
@@
- SVGA3D_DEVCAP_MAX
+ SVGA3D_DEVCAP_DX
//# pattern-68, witnesses: 2
@@
expression E1;
expression ME0;
@@
- struct vmw_user_context * ctx = ctx;
- ctx = kzalloc(sizeof(unsigned long), GFP_KERNEL);
- ME0 = E1;
