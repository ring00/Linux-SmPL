//# pattern-4, witnesses: 37
@@
expression list listE0;
@@
- fence_put(listE0)
+ dma_fence_put(listE0)
//# pattern-3, witnesses: 14
@@
expression list listE0;
@@
- fence_get(listE0)
+ dma_fence_get(listE0)
//# pattern-2, witnesses: 8
@@
expression list listE0;
@@
- fence_get_rcu(listE0)
+ dma_fence_get_rcu(listE0)
//# pattern-6, witnesses: 8
@@
expression list listE0;
@@
- fence_is_signaled(listE0)
+ dma_fence_is_signaled(listE0)
//# pattern-11, witnesses: 6
@@
expression list listE0;
@@
- fence_parent(listE0)
+ dma_fence_parent(listE0)
//# pattern-17, witnesses: 5
@@
expression list listE0;
@@
- fence_wait(listE0)
+ dma_fence_wait(listE0)
//# pattern-22, witnesses: 3
@@
expression list listE0;
@@
- fence_wait_timeout(listE0)
+ dma_fence_wait_timeout(listE0)
//# pattern-31, witnesses: 3
@r0@
identifier fn;
expression P0, P1;
@@
fence_add_callback(P0, P1, fn)
@@
identifier cb;
identifier fence;
identifier r0.fn;
@@
- void fn(struct fence * fence, struct fence_cb * cb)
+ void fn(struct dma_fence * fence, struct dma_fence_cb * cb)
 { ... }
//# pattern-37, witnesses: 3
@@
@@
- FENCE_FLAG_SIGNALED_BIT
+ DMA_FENCE_FLAG_SIGNALED_BIT
//# pattern-42, witnesses: 3
@@
expression list listE0;
@@
- fence_add_callback(listE0)
+ dma_fence_add_callback(listE0)
//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- fence_context_alloc(listE0)
+ dma_fence_context_alloc(listE0)
//# pattern-9, witnesses: 2
@@
typedef bool;
identifier f;
identifier fn;
@@
- bool fn(struct fence * f)
+ bool fn(struct dma_fence * f)
 { ... }
//# pattern-16, witnesses: 2
@@
identifier fence;
identifier fn;
identifier size;
identifier str;
@@
- void fn(struct fence * fence, char * str, int size)
+ void fn(struct dma_fence * fence, char * str, int size)
 { ... }
//# pattern-23, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier fence;
identifier obj;
identifier r1.fn;
@@
- void fn(struct reservation_object * obj, struct fence * fence)
+ void fn(struct reservation_object * obj, struct dma_fence * fence)
 { ... }
//# pattern-24, witnesses: 2
@@
identifier fence;
identifier fn;
@@
- const char * fn(struct fence * fence)
+ const char * fn(struct dma_fence * fence)
 { ... }
//# pattern-26, witnesses: 2
@@
typedef bool;
identifier fence;
identifier fn;
@@
 bool fn(struct dma_fence * fence)
 { ... }
//# pattern-30, witnesses: 2
@@
expression list listE0;
@@
- fence_init(listE0)
+ dma_fence_init(listE0)
//# pattern-33, witnesses: 2
@@
expression list listE0;
@@
- fence_is_signaled_locked(listE0)
+ dma_fence_is_signaled_locked(listE0)
//# pattern-36, witnesses: 2
@@
expression list listE0;
@@
- fence_free(listE0)
+ dma_fence_free(listE0)
//# pattern-38, witnesses: 2
@@
identifier f;
identifier fn;
@@
 const char * fn(struct dma_fence * f)
 { ... }
//# pattern-41, witnesses: 2
@@
typedef bool;
identifier fence;
identifier fn;
@@
 bool fn(struct dma_fence * fence)
 { ... }
//# pattern-45, witnesses: 2
@@
typedef bool;
identifier fence;
identifier fn;
@@
 bool fn(struct dma_fence * fence)
 { ... }
//# pattern-50, witnesses: 2
@@
identifier f;
identifier fn;
@@
 const char * fn(struct dma_fence * f)
 { ... }
//# pattern-55, witnesses: 2
@@
expression list listE0;
@@
- fence_to_sync_pt(listE0)
+ dma_fence_to_sync_pt(listE0)
