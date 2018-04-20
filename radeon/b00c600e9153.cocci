//# pattern-2, witnesses: 32
@@
@@
- fb->depth
+ fb->format->depth
//# pattern-1, witnesses: 6
@@
expression ME0;
@@
- ME0.depth
+ ME0.format->depth
//# pattern-3, witnesses: 2
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
- fb->depth = E0;
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
- par->set_fb
+ par->set_fb->format
