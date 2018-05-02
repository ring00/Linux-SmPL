//# pattern-1, witnesses: 3
@@
statement S0;
@@
- if (!ret && !drm_drv_uses_atomic_modeset(property->dev)) { S0 }
+ if (!ret) { S0 }
