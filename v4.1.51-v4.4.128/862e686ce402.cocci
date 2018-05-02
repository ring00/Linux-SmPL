//# pattern-2, witnesses: 2
@@
@@
- if (encoder->bridge) {
- encoder->bridge->funcs->disable(encoder->bridge);
- }
- if (encoder->bridge) {
- encoder->bridge->funcs->post_disable(encoder->bridge);
- }
+ drm_bridge_disable(encoder->bridge);
+ drm_bridge_post_disable(encoder->bridge);
//# pattern-4, witnesses: 2
@@
@@
- if (encoder->bridge && encoder->bridge->funcs->mode_set) {
- encoder->bridge->funcs->mode_set(encoder->bridge, mode, adjusted_mode);
- }
+ drm_bridge_mode_set(encoder->bridge, mode, adjusted_mode);
//# pattern-6, witnesses: 2
@@
expression E0;
expression E1;
@@
- if (encoder->bridge && encoder->bridge->funcs->mode_fixup) {
- ret = encoder->bridge->funcs->mode_fixup(encoder->bridge, E0, E1);
- }
+ ret = drm_bridge_mode_fixup(encoder->bridge, E0, E1);
