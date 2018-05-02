//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct drm_driver i = {
    .gem_prime_export = fn,
};
@@
expression E0;
expression E1;
expression ME2;
identifier PV3;
identifier dev;
identifier flags;
identifier obj;
@@
 struct dma_buf * drm_gem_prime_export(struct drm_device * dev, struct drm_gem_object * obj, int flags)
 {
     <...
- struct dma_buf_export_info exp_info = ;
- exp_info.ops = E0;
- exp_info.size = E1;
- ME2 = PV3;
+ struct dma_buf_export_info exp_info = ;
     ...>
 }
