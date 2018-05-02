//# pattern-5, witnesses: 11
@@
expression E1;
expression E2;
expression E3;
identifier PV0;
@@
- drm_plane_helper_check_state(PV0, &clip, E1, E2, E3, true)
+ drm_plane_helper_check_state(PV0, crtc_state, &clip, E1, E2, E3, true)
//# pattern-7, witnesses: 2
@@
expression E2;
expression E3;
expression E4;
identifier PV0;
identifier PV1;
@@
- drm_plane_helper_check_state(&PV0->base, &PV1->clip, E2, E3, E4, true)
+ drm_plane_helper_check_state(&PV0->base, &crtc_state->base, &PV1->clip, E2, E3, E4, true)
//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct nv50_wndw_func i = {
    .acquire = fn,
};
@@
expression EC0;
identifier asyh;
identifier asyw;
identifier r0.fn;
identifier wndw;
@@
 int fn(struct nv50_wndw * wndw, struct nv50_wndw_atom * asyw, struct nv50_head_atom * asyh)
 {
     <...
- drm_plane_helper_check_state(&asyw->state, &asyw->clip, DRM_PLANE_HELPER_NO_SCALING, DRM_PLANE_HELPER_NO_SCALING, EC0, true)
+ drm_plane_helper_check_state(&asyw->state, &asyh->state, &asyw->clip, DRM_PLANE_HELPER_NO_SCALING, DRM_PLANE_HELPER_NO_SCALING, EC0, true)
     ...>
 }
