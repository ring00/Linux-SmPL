//# pattern-1, witnesses: 5
@r0@
identifier i, fn;
@@
struct drm_driver i = {
    .gem_prime_export = fn,
};
@@
identifier dev;
identifier flags;
identifier obj;
identifier r0.fn;
@@
 struct dma_buf * fn(struct drm_device * dev, struct drm_gem_object * obj, int flags)
 {
     <...
- dma_buf_export(&exp_info)
+ drm_gem_dmabuf_export(dev, &exp_info)
     ...>
 }
