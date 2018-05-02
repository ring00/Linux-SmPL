//# pattern-1, witnesses: 3
@@
expression E4;
identifier PV5;
expression S3;
expression V0;
expression V1;
expression V2;
expression V6;
expression V7;
@@
- V0->adap = cec_allocate_adapter(&V1, V2, S3, E4, 1, &PV5->dev);
- V6 = cec_register_adapter(V7->adap);
+ V0->adap = cec_allocate_adapter(&V1, V2, S3, E4, 1);
+ V6 = cec_register_adapter(V7->adap, &PV5->dev);
//# pattern-4, witnesses: 3
@r0@
identifier i, fn;
@@
struct i2c_driver i = {
    .probe = fn,
};
@@
expression E1;
expression V0;
identifier client;
identifier id;
identifier r0.fn;
@@
 int fn(struct i2c_client * client, const struct i2c_device_id * id)
 {
     <...
- cec_allocate_adapter(&V0, state, dev_name(&client->dev), CEC_CAP_TRANSMIT | CEC_CAP_LOG_ADDRS | CEC_CAP_PASSTHROUGH | CEC_CAP_RC, E1, &client->dev)
+ cec_allocate_adapter(&V0, state, dev_name(&client->dev), CEC_CAP_TRANSMIT | CEC_CAP_LOG_ADDRS | CEC_CAP_PASSTHROUGH | CEC_CAP_RC, E1)
     ...>
 }
//# pattern-12, witnesses: 3
@@
@@
- cec_register_adapter(state->cec_adap)
+ cec_register_adapter(state->cec_adap, &client->dev)
//# pattern-5, witnesses: 2
@@
expression E0;
expression EC1;
identifier inst;
identifier pdev;
@@
 int vivid_create_instance(struct platform_device * pdev, int inst)
 {
     <...
- adap = vivid_cec_alloc_adap(dev, E0, &pdev->dev, EC1);
- ret = cec_register_adapter(adap);
+ adap = vivid_cec_alloc_adap(dev, E0, EC1);
+ ret = cec_register_adapter(adap, &pdev->dev);
     ...>
 }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
identifier available_las;
identifier caps;
identifier name;
identifier ops;
identifier parent;
identifier priv;
typedef u32;
typedef u8;
@@
- struct cec_adapter * cec_allocate_adapter(const struct cec_adap_ops * ops, void * priv, const char * name, u32 caps, u8 available_las, struct device * parent)
+ struct cec_adapter * cec_allocate_adapter(const struct cec_adap_ops * ops, void * priv, const char * name, u32 caps, u8 available_las)
 {
     <...
- ME0.parent = parent;
     ...>
 }
