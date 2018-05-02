//# pattern-1, witnesses: 8
@r0@
identifier fn;
expression P0, P2;
@@
swi_init_workitem(P0, fn, P2)
@@
expression IL0;
identifier wi;
@@
- int srpc_handle_rpc(struct swi_workitem * wi)
+ void srpc_handle_rpc(struct swi_workitem * wi)
 {
     <...
- return IL0;
+ return;
     ...>
 }
//# pattern-5, witnesses: 3
@r1@
identifier fn;
expression P0, P2;
@@
swi_init_workitem(P0, fn, P2)
@@
identifier r1.fn;
identifier wi;
@@
 void fn(struct swi_workitem * wi)
 { ... }
//# pattern-17, witnesses: 3
@r2@
identifier fn;
expression P0, P2;
@@
swi_init_workitem(P0, fn, P2)
@@
identifier wi;
@@
 void srpc_send_rpc(struct swi_workitem * wi)
 {
     <...
- return 1;
+ return;
     ...>
 }
//# pattern-12, witnesses: 2
@@
expression E0;
@@
- swi_exit_workitem(E0);
