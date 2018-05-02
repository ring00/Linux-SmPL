//# pattern-17, witnesses: 2
@@
identifier fence;
identifier fn;
@@
- const char * fn(struct fence * fence)
+ const char * fn(struct fence * fence)
 {
     <...
- struct sync_pt * pt = container_of(fence, );
- struct sync_timeline * parent = sync_pt_parent(pt);
+ struct sync_timeline * parent = fence_parent(fence);
     ...>
 }
