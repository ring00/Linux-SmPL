//# pattern-1, witnesses: 12
@@
@@
- fb->bits_per_pixel
+ fb->format->cpp[0] * 8
//# pattern-5, witnesses: 4
@@
expression E0;
@@
- E0 / target_fb->bits_per_pixel / 8
+ E0 / target_fb->format->cpp[0]
//# pattern-6, witnesses: 3
@@
@@
- fb->bits_per_pixel >> 3
+ fb->format->cpp[0]
//# pattern-3, witnesses: 2
@@
identifier s;
@@
 int s = {
 };
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier dev;
identifier fb;
identifier mode_cmd;
@@
 void drm_helper_mode_fill_fb_struct(struct drm_device * dev, struct drm_framebuffer * fb, const struct drm_mode_fb_cmd2 * mode_cmd)
 {
     <...
- fb->bits_per_pixel = E0;
     ...>
 }
