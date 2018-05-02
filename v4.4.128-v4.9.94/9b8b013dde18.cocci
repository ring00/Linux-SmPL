//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct drm_plane_helper_funcs i = {
    .atomic_check = fn,
};
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression EC6;
identifier plane;
identifier r0.fn;
identifier state;
@@
 int fn(struct drm_plane * plane, struct drm_plane_state * state)
 {
     <...
- drm_plane_helper_check_update(plane, E0, E1, E2, E3, &clip, E4, E5, EC6, true, &visible)
+ drm_plane_helper_check_update(plane, E0, E1, E2, E3, &clip, state->rotation, E4, E5, EC6, true, &visible)
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct drm_plane_funcs i = {
    .update_plane = fn,
};
@@
expression E0;
expression E1;
expression EC2;
identifier crtc;
identifier crtc_h;
identifier crtc_w;
identifier crtc_x;
identifier crtc_y;
identifier fb;
identifier plane;
identifier r1.fn;
identifier src_h;
identifier src_w;
identifier src_x;
identifier src_y;
typedef uint32_t;
@@
 int fn(struct drm_plane * plane, struct drm_crtc * crtc, struct drm_framebuffer * fb, int crtc_x, int crtc_y, unsigned int crtc_w, unsigned int crtc_h, uint32_t src_x, uint32_t src_y, uint32_t src_w, uint32_t src_h)
 {
     <...
- drm_plane_helper_check_update(plane, crtc, fb, &src, &dest, &clip, E0, E1, EC2, false, &visible)
+ drm_plane_helper_check_update(plane, crtc, fb, &src, &dest, &clip, BIT(DRM_ROTATE_0), E1, E0, false, EC2, &visible)
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
identifier crtc_state;
identifier fn;
identifier plane;
identifier state;
@@
 int fn(struct drm_plane * plane, struct intel_crtc_state * crtc_state, struct intel_plane_state * state)
 {
     <...
- drm_plane_helper_check_update(plane, crtc, fb, &state->src, &state->dst, &state->clip, E0, E1, E2, true, &state->visible)
+ drm_plane_helper_check_update(plane, crtc, fb, &state->src, &state->dst, &state->clip, state->base.rotation, E0, E1, E2, true, &state->visible)
     ...>
 }
