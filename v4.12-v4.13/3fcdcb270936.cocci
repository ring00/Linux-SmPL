//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct drm_driver i = {
    .get_vblank_timestamp = fn,
};
@@
expression E0;
typedef bool;
identifier dev;
identifier flags;
identifier max_error;
identifier pipe;
identifier r0.fn;
identifier time;
@@
- bool fn(struct drm_device * dev, unsigned int pipe, int * max_error, struct timeval * time, unsigned int flags)
+ bool fn(struct drm_device * dev, unsigned int pipe, int * max_error, struct timeval * time, bool in_vblank_irq)
 {
     <...
- drm_calc_vbltimestamp_from_scanoutpos(dev, pipe, max_error, time, flags, E0)
+ drm_calc_vbltimestamp_from_scanoutpos(dev, pipe, max_error, time, in_vblank_irq, E0)
     ...>
 }
//# pattern-10, witnesses: 2
@@
@@
- drm_update_vblank_count(dev, pipe, 0)
+ drm_update_vblank_count(dev, pipe, false)
