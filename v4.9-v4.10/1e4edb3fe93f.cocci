//# pattern-1, witnesses: 2
@@
expression E1;
expression E3;
expression F2;
expression V0;
@@
- mei_cldev_register_event_cb(V0->cldev, E1, F2, E3)
+ mei_cldev_register_event_cb(V0->cldev, E1, F2)
//# pattern-3, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P3;
@@
mei_cldev_register_event_cb(P0, P1, fn, P3)
@@
identifier cldev;
identifier context;
identifier events;
identifier r0.fn;
typedef u32;
@@
- void fn(struct mei_cl_device * cldev, u32 events, void * context)
+ void fn(struct mei_cl_device * cldev, u32 events)
 { ... }
