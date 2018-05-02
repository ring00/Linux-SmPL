//# pattern-1, witnesses: 5
@@
expression E0;
@@
- E0->event
+ E0->event.vbl
//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier crtc;
identifier e;
identifier r0.fn;
@@
 void fn(struct drm_crtc * crtc, struct drm_pending_vblank_event * e)
 {
     <...
- e->event.crtc_id = crtc->base.id;
     ...>
 }
