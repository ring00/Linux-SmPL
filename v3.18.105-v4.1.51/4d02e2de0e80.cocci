//# pattern-6, witnesses: 2
@@
@@
- drm_modeset_lock_crtc(crtc)
+ drm_modeset_lock_crtc(crtc, crtc->cursor)
