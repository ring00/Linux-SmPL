//# pattern-1, witnesses: 2
@@
@@
- if (flags & DRM_MODE_PAGE_FLIP_ASYNC) {
- return -EINVAL;
- }
//# pattern-2, witnesses: 2
@@
@@
- page_flip_common(state, crtc, fb, event)
+ page_flip_common(state, crtc, fb, event, flags)
