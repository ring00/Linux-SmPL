//# pattern-2, witnesses: 4
@@
@@
- ret = drm_mode_create_dirty_info_property(dev);
//# pattern-3, witnesses: 4
@@
@@
- drm_object_attach_property(&connector->base, dev->mode_config.dirty_info_property, 1);
