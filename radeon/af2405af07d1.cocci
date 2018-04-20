//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct drm_dp_mst_topology_cbs i = {
    .register_connector = fn,
};
@@
identifier connector;
@@
 void intel_dp_register_mst_connector(struct drm_connector * connector)
 {
     <...
- struct drm_device * dev = connector->dev;
- dev;
     ...>
 }
//# pattern-7, witnesses: 2
@@
@@
- drm_modeset_unlock_all(dev);
//# pattern-8, witnesses: 2
@@
@@
- drm_modeset_lock_all(dev);
