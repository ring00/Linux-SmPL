//# pattern-1, witnesses: 60
@@
expression E0;
expression E1;
expression E2;
@@
- drm_gem_object_lookup(E0, E1, E2)
+ drm_gem_object_lookup(E1, E2)
//# pattern-3, witnesses: 5
@@
expression E1;
identifier PV0;
@@
- armada_gem_object_lookup(dev, PV0, E1)
+ armada_gem_object_lookup(PV0, E1)
