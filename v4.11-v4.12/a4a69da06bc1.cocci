//# pattern-1, witnesses: 17
@@
expression list listE0;
@@
- drm_framebuffer_unreference(listE0)
+ drm_framebuffer_put(listE0)
//# pattern-2, witnesses: 5
@@
expression list listE0;
@@
- drm_framebuffer_reference(listE0)
+ drm_framebuffer_get(listE0)
