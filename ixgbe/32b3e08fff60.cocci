unknown kind: ForStmt
unknown kind: ForStmt
//# pattern-2, witnesses: 3
@r0@
identifier fn;
expression P0, P1, P3;
@@
netif_napi_add(P0, P1, fn, P3)
@@
identifier napi;
identifier r0.fn;
identifier weight;
@@
 int fn(struct napi_struct * napi, int weight)
 {
     <...
- napi_complete(napi)
+ napi_complete_done(napi, work_done)
     ...>
 }
//# pattern-3, witnesses: 3
@r1@
identifier fn;
expression P0, P1, P3;
@@
netif_napi_add(P0, P1, fn, P3)
@@
identifier budget;
identifier napi;
identifier r1.fn;
@@
 int fn(struct napi_struct * napi, int budget)
 {
     <...
- int per_ring_budget = per_ring_budget;
- napi_complete(napi);
+ int per_ring_budget = per_ring_budget;
+ napi_complete_done(napi, work_done);
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
- int per_ring_budget = per_ring_budget;
+ int per_ring_budget = per_ring_budget;
