//# pattern-1, witnesses: 96
@@
expression E0;
@@
- E0->pixel_format
+ E0->format->format
//# pattern-4, witnesses: 2
@@
@@
- fb->pixel_format = fourcc;
- aligned_height = intel_fb_align_height(dev, fb->height, fb->pixel_format, fb->modifier);
+ aligned_height = intel_fb_align_height(dev, fb->height, fb->format->format, fb->modifier);
