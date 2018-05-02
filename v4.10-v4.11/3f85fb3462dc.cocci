//# pattern-1, witnesses: 11
@@
expression E0;
@@
- E0->hole_follows
+ drm_mm_hole_follows(E0)
//# pattern-2, witnesses: 2
@@
@@
- tmp.hole_follows
+ drm_mm_hole_follows(&tmp)
