//# pattern-3, witnesses: 5
@@
expression list listE0;
@@
- qcom_smd_send(listE0)
+ rpmsg_send(listE0)
//# pattern-10, witnesses: 3
@r0@
identifier i, fn;
@@
struct qcom_smd_driver i = {
    .remove = fn,
};
@@
identifier r0.fn;
identifier sdev;
@@
- void fn(struct qcom_smd_device * sdev)
+ void fn(struct rpmsg_device * rpdev)
 {
     <...
- sdev->dev
+ rpdev->dev
     ...>
 }
//# pattern-16, witnesses: 3
@@
expression ME0;
expression V1;
@@
- qcom_smd_set_drvdata(ME0, V1);
//# pattern-1, witnesses: 2
@r1@
identifier fn;
expression P0, P1;
@@
qcom_wcnss_open_channel(P0, P1, fn)
@@
identifier channel;
identifier count;
identifier data;
identifier r1.fn;
identifier s;
typedef u32;
@@
-  struct btqcomsmd * s = {
 };
int fn(struct qcom_smd_channel * channel, const void * data, size_t count)
+ int fn(struct rpmsg_device * rpdev, void * data, int count, void * priv, u32 addr)
 {
     <...
 struct btqcomsmd * s = {
 };
     ...>
 }
//# pattern-11, witnesses: 2
@r2@
identifier i, fn;
@@
struct qcom_smd_driver i = {
    .callback = fn,
};
@@
identifier addr;
identifier data;
identifier len;
identifier priv;
identifier r2.fn;
identifier rpdev;
typedef u32;
@@
 int fn(struct rpmsg_device * rpdev, void * data, int len, void * priv, u32 addr)
 {
     <...
- qcom_smd_get_drvdata(channel)
+ dev_get_drvdata(&rpdev->dev)
     ...>
 }
//# pattern-12, witnesses: 2
@@
expression F1;
expression S0;
@@
- qcom_wcnss_open_channel(wcnss, S0, F1)
+ qcom_wcnss_open_channel(wcnss, S0, F1, btq)
