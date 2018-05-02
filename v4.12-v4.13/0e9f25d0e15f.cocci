//# pattern-2, witnesses: 2
@@
expression V0;
typedef bool;
identifier conn_state;
identifier encoder;
identifier fn;
identifier pipe_config;
@@
 bool fn(struct intel_encoder * encoder, struct intel_crtc_state * pipe_config, struct drm_connector_state * conn_state)
 {
     <...
- V0->aspect_ratio
+ conn_state->picture_aspect_ratio
     ...>
 }
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct drm_connector_funcs i = {
    .set_property = fn,
};
@@
identifier connector;
identifier property;
identifier r0.fn;
typedef uint64_t;
identifier val;
@@
 int fn(struct drm_connector * connector, struct drm_property * property, uint64_t val)
 {
     <...
+ connector->state->picture_aspect_ratio = val;
     ...>
 }
