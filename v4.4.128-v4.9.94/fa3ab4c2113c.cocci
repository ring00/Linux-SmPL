//# pattern-1, witnesses: 2
@@
@@
- DRM_DEBUG_KMS("[CRTC:%d]\n", crtc->base.id)
+ DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name)
