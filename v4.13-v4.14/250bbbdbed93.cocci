//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct i2c_driver i = {
    .probe = fn,
};
@@
expression V0;
identifier client;
identifier id;
identifier r0.fn;
@@
 int fn(struct i2c_client * client, const struct i2c_device_id * id)
 {
     <...
- st_sensors_of_i2c_probe(client, V0)
+ st_sensors_of_name_probe(&client->dev, V0, client->name, sizeof(unsigned long))
     ...>
 }
