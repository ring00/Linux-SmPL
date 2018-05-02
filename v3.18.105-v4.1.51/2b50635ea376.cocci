//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct i2c_driver i = {
    .probe = fn,
};
@@
identifier i2c;
identifier id;
@@
 int max77686_i2c_probe(struct i2c_client * i2c, const struct i2c_device_id * id)
 {
     <...
- struct max77686_platform_data * pdata = dev_get_platdata(&i2c->dev);
- if (IS_ENABLED && i2c->dev.of_node && !pdata) {
- pdata = max77686_i2c_parse_dt_pdata(&i2c->dev);
- }
     ...>
 }
