//# pattern-10, witnesses: 4
@@
@@
- lockdep_assert_held(&efivars_lock);
//# pattern-7, witnesses: 3
@@
expression list listE0;
@@
- spin_unlock_irq(listE0)
+ up(listE0)
//# pattern-1, witnesses: 2
@@
identifier data;
identifier entry;
identifier fn;
@@
 int fn(struct efivar_entry * entry, void * data)
 {
     ...
- efivar_entry_remove(entry);
+ int err = efivar_entry_remove(entry);
+ if (err) {
+ return err;
+ }
 }
//# pattern-19, witnesses: 2
@@
@@
- spin_lock_irq(&efivars_lock);
- spin_unlock_irq(&efivars_lock);
+ if (down_interruptible(&efivars_lock)) {
+ return -EINTR;
+ }
+ up(&efivars_lock);
//# pattern-30, witnesses: 2
@@
expression list listE0;
@@
- efivar_entry_iter_begin(listE0);
+ if (efivar_entry_iter_begin(listE0)) {
+ return -EINTR;
+ }
