//# pattern-7, witnesses: 4
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL0;
typedef bool;
identifier dev;
identifier flags;
identifier max_error;
identifier mode;
identifier pipe;
identifier vblank_time;
@@
- int drm_calc_vbltimestamp_from_scanoutpos(struct drm_device * dev, unsigned int pipe, int * max_error, struct timeval * vblank_time, unsigned int flags, const struct drm_display_mode * mode)
+ bool drm_calc_vbltimestamp_from_scanoutpos(struct drm_device * dev, unsigned int pipe, int * max_error, struct timeval * vblank_time, unsigned int flags, const struct drm_display_mode * mode)
 {
     <...
- return -IL0;
+ return false;
     ...>
 }
//# pattern-4, witnesses: 3
@r1@
identifier i, fn;
@@
struct drm_driver i = {
    .get_vblank_timestamp = fn,
};
@@
typedef bool;
identifier dev;
identifier flags;
identifier max_error;
identifier pipe;
identifier r1.fn;
identifier time;
@@
- int fn(struct drm_device * dev, unsigned int pipe, int * max_error, struct timeval * time, unsigned int flags)
+ bool fn(struct drm_device * dev, unsigned int pipe, int * max_error, struct timeval * time, unsigned int flags)
 {
     <...
- return -EINVAL;
+ return false;
     ...>
 }
//# pattern-8, witnesses: 2
@r2@
identifier i, fn;
@@
struct drm_driver i = {
    .get_vblank_timestamp = fn,
};
@@
typedef bool;
identifier crtc;
identifier dev;
identifier flags;
identifier max_error;
identifier vblank_time;
@@
- int radeon_get_vblank_timestamp_kms(struct drm_device * dev, int crtc, int * max_error, struct timeval * vblank_time, unsigned int flags)
+ bool radeon_get_vblank_timestamp_kms(struct drm_device * dev, int crtc, int * max_error, struct timeval * vblank_time, unsigned int flags)
 {
     <...
- return -EINVAL;
+ return false;
     ...>
 }
