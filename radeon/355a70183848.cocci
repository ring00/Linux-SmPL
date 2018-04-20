//# pattern-12, witnesses: 2
@r0@
identifier i, fn;
@@
struct drm_driver i = {
    .dumb_map_offset = fn,
};
@@
identifier dev;
identifier filp;
identifier handle;
identifier offset_p;
typedef uint32_t;
@@
 int radeon_mode_dumb_mmap(struct drm_file * filp, struct drm_device * dev, uint32_t handle, uint64_t * offset_p)
 {
     <...
- struct drm_gem_object * gobj = gobj;
- gobj = drm_gem_object_lookup(dev, filp, handle);
     ...>
 }
