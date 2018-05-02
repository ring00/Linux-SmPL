//# pattern-1, witnesses: 7
@r0@
identifier i, fn;
@@
struct ib_client i = {
    .remove = fn,
};
@@
expression V0;
expression V1;
identifier device;
identifier r0.fn;
@@
- void fn(struct ib_device * device)
+ void fn(struct ib_device * device, void * client_data)
 {
     <...
- V0 = ib_get_client_data(device, &V1);
     ...>
 }
//# pattern-3, witnesses: 5
@r1@
identifier i, fn;
@@
struct ib_client i = {
    .remove = fn,
};
@@
expression V0;
identifier client_data;
identifier device;
identifier r1.fn;
@@
 void fn(struct ib_device * device, void * client_data)
 {
     <...
- ib_get_client_data(device, &V0)
+ client_data
     ...>
 }
//# pattern-5, witnesses: 2
@r2@
identifier i, fn;
@@
struct ib_client i = {
    .remove = fn,
};
@@
identifier client_data;
identifier device;
identifier r2.fn;
@@
 void fn(struct ib_device * device, void * client_data)
 { ... }
