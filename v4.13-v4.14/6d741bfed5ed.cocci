//# pattern-33, witnesses: 25
@@
@@
- RC_TYPE_UNKNOWN
+ RC_PROTO_UNKNOWN
//# pattern-27, witnesses: 10
@@
@@
- RC_BIT_ALL_IR_DECODER
+ RC_PROTO_BIT_ALL_IR_DECODER
//# pattern-30, witnesses: 5
@@
@@
- RC_TYPE_RC5
+ RC_PROTO_RC5
//# pattern-31, witnesses: 4
@@
@@
- RC_BIT_RC5
+ RC_PROTO_BIT_RC5
//# pattern-14, witnesses: 3
@@
@@
- RC_BIT_RC6_6A_32
+ RC_PROTO_BIT_RC6_6A_32
//# pattern-25, witnesses: 3
@@
@@
- RC_BIT_RC6_MCE
+ RC_PROTO_BIT_RC6_MCE
//# pattern-2, witnesses: 2
@@
@@
- RC_TYPE_NECX
+ RC_PROTO_NECX
//# pattern-7, witnesses: 2
@@
@@
- RC_BIT_UNKNOWN
+ RC_PROTO_BIT_UNKNOWN
//# pattern-11, witnesses: 2
@r0@
identifier i, fn;
@@
struct i2c_driver i = {
    .probe = fn,
};
@@
expression ME0;
identifier client;
identifier id;
@@
 int ir_probe(struct i2c_client * client, const struct i2c_device_id * id)
 {
     <...
- u64 rc_type = RC_BIT_UNKNOWN;
- if (client->dev.platform_data) {
- if (init_data->type) {
- rc_type = init_data->type;
- }
- }
- ME0 = rc_type;
+ u64 rc_proto = RC_PROTO_BIT_UNKNOWN;
+ if (client->dev.platform_data) {
+ if (init_data->type) {
+ rc_proto = init_data->type;
+ }
+ }
+ ME0 = rc_proto;
     ...>
 }
//# pattern-17, witnesses: 2
@@
@@
- RC_BIT_CEC
+ RC_PROTO_BIT_CEC
