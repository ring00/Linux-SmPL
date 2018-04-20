//# pattern-7, witnesses: 84
@@
expression list listE0;
@@
- fence_put(listE0)
+ dma_fence_put(listE0)
//# pattern-6, witnesses: 31
@@
expression list listE0;
@@
- fence_get(listE0)
+ dma_fence_get(listE0)
//# pattern-10, witnesses: 16
@@
expression list listE0;
@@
- fence_is_signaled(listE0)
+ dma_fence_is_signaled(listE0)
//# pattern-15, witnesses: 12
@@
expression list listE0;
@@
- fence_wait_timeout(listE0)
+ dma_fence_wait_timeout(listE0)
//# pattern-20, witnesses: 11
@@
expression list listE0;
@@
- fence_wait(listE0)
+ dma_fence_wait(listE0)
//# pattern-2, witnesses: 8
@@
expression list listE0;
@@
- fence_get_rcu(listE0)
+ dma_fence_get_rcu(listE0)
//# pattern-17, witnesses: 6
@@
expression list listE0;
@@
- fence_parent(listE0)
+ dma_fence_parent(listE0)
//# pattern-12, witnesses: 4
@@
expression list listE0;
@@
- fence_context_alloc(listE0)
+ dma_fence_context_alloc(listE0)
//# pattern-34, witnesses: 4
@r0@
identifier fn;
expression P0, P1;
@@
(varies)(P0, P1, fn)
@@
identifier cb;
identifier fence;
identifier r0.fn;
@@
- void fn(struct fence * fence, struct fence_cb * cb)
+ void fn(struct dma_fence * fence, struct dma_fence_cb * cb)
 { ... }
//# pattern-56, witnesses: 4
@@
@@
- FENCE_FLAG_SIGNALED_BIT
+ DMA_FENCE_FLAG_SIGNALED_BIT
//# pattern-61, witnesses: 4
@@
expression list listE0;
@@
- fence_add_callback(listE0)
+ dma_fence_add_callback(listE0)
//# pattern-18, witnesses: 3
@@
expression list listE0;
@@
- fence_init(listE0)
+ dma_fence_init(listE0)
//# pattern-27, witnesses: 3
@@
identifier fence;
identifier fn;
identifier size;
identifier str;
@@
- void fn(struct fence * fence, char * str, int size)
+ void fn(struct dma_fence * fence, char * str, int size)
 { ... }
//# pattern-35, witnesses: 3
@@
expression list listE0;
@@
- fence_signal(listE0)
+ dma_fence_signal(listE0)
//# pattern-14, witnesses: 2
@@
typedef bool;
identifier f;
identifier fn;
@@
- bool fn(struct fence * f)
+ bool fn(struct dma_fence * f)
 { ... }
//# pattern-28, witnesses: 2
@@
typedef bool;
identifier fence;
identifier fn;
@@
 bool fn(struct dma_fence * fence)
 { ... }
//# pattern-31, witnesses: 2
@@
expression list listE0;
@@
- fence_is_later(listE0)
+ dma_fence_is_later(listE0)
//# pattern-38, witnesses: 2
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
//# pattern-40, witnesses: 2
@@
identifier fence;
identifier fn;
@@
- const char * fn(struct fence * fence)
+ const char * fn(struct dma_fence * fence)
 { ... }
//# pattern-42, witnesses: 2
@@
identifier fence;
identifier fn;
@@
 const char * fn(struct dma_fence * fence)
 { ... }
//# pattern-50, witnesses: 2
@@
typedef bool;
identifier fence;
identifier fn;
@@
 bool fn(struct dma_fence * fence)
 { ... }
//# pattern-51, witnesses: 2
@@
expression list listE0;
@@
- fence_is_signaled_locked(listE0)
+ dma_fence_is_signaled_locked(listE0)
//# pattern-52, witnesses: 2
@@
typedef bool;
identifier fence;
identifier fn;
identifier interruptible;
identifier timeout_jiffies;
@@
- long fn(struct fence * fence, bool interruptible, long timeout_jiffies)
+ long fn(struct dma_fence * fence, bool interruptible, long timeout_jiffies)
 { ... }
//# pattern-54, witnesses: 2
@@
expression list listE0;
@@
- fence_free(listE0)
+ dma_fence_free(listE0)
//# pattern-60, witnesses: 2
@@
identifier fence;
identifier fn;
@@
- void fn(struct fence * fence)
+ void fn(struct dma_fence * fence)
 { ... }
//# pattern-62, witnesses: 2
@@
identifier fence;
identifier fn;
@@
- struct sync_file * fn(struct fence * fence)
+ struct sync_file * fn(struct dma_fence * fence)
 { ... }
//# pattern-70, witnesses: 2
@@
typedef bool;
identifier fence;
identifier fn;
@@
 bool fn(struct dma_fence * fence)
 { ... }
//# pattern-75, witnesses: 2
@@
identifier fence;
identifier fn;
@@
 void fn(struct dma_fence * fence)
 { ... }
//# pattern-80, witnesses: 2
@@
typedef bool;
identifier fence;
identifier fn;
@@
 bool fn(struct dma_fence * fence)
 { ... }
//# pattern-83, witnesses: 2
@@
expression list listE0;
@@
- fence_to_sync_pt(listE0)
+ dma_fence_to_sync_pt(listE0)
