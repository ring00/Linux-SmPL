//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier r0.fn;
identifier ring;
@@
 void fn(struct tb_ring * ring)
 {
     <...
- mutex_lock(&ring->lock)
+ spin_lock_irq(&ring->lock)
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- mutex_unlock(listE0)
+ spin_unlock_irq(listE0)
