//# pattern-1, witnesses: 7
@@
expression E1;
expression V0;
@@
- V0->fb = E1;
+ drm_atomic_set_fb_for_plane(V0, E1);
//# pattern-4, witnesses: 2
@@
@@
- if (plane->state) {
- plane_state = kmemdup(plane->state, sizeof(unsigned long), GFP_KERNEL);
- }
+ if (plane->state) {
+ plane_state = drm_atomic_helper_plane_duplicate_state(plane);
+ }
