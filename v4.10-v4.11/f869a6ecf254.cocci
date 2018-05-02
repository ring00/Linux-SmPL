//# pattern-1, witnesses: 3
@r1@
identifier i, fn;
@@
struct drm_crtc_funcs i = {
    .page_flip = fn,
};
@@
identifier crtc;
identifier event;
identifier fb;
identifier flags;
typedef uint32_t;
@@
 int drm_atomic_helper_page_flip(struct drm_crtc * crtc, struct drm_framebuffer * fb, struct drm_pending_vblank_event * event, uint32_t flags)
 {
     <...
- struct drm_crtc_state * crtc_state = crtc_state;
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- struct drm_plane_state * plane_state = plane_state;
- plane_state = drm_atomic_get_plane_state(state, plane);
