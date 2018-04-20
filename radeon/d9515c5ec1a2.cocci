//# pattern-1, witnesses: 2
@@
expression E0;
@@
- drm_connector_register(E0);
//# pattern-2, witnesses: 2
@@
@@
- drm_modeset_unlock_all(dev);
//# pattern-4, witnesses: 2
@@
@@
- drm_modeset_lock_all(dev);
