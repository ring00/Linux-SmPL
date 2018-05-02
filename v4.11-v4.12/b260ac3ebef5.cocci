//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0 = drm_modeset_legacy_acquire_ctx(crtc)
+ E0 = crtc->dev->mode_config.acquire_ctx
