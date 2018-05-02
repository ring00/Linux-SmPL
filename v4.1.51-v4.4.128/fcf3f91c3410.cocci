//# pattern-12, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression ME3;
identifier drm;
@@
 void nouveau_accel_init(struct nouveau_drm * drm)
 {
     <...
- nouveau_channel_new(drm, &drm->device, E0, E1, E2, &ME3)
+ nouveau_channel_new(drm, &drm->device, E1, E2, &ME3)
     ...>
 }
//# pattern-14, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
@@
- nvif_object_init(E0, E1, E2, E3, E4, &E5)
+ nvif_object_init(E0, 0, E2, E3, E4, &E5)
