//# pattern-2, witnesses: 11
@@
@@
- spin_lock(&efi_runtime_lock);
- spin_unlock(&efi_runtime_lock);
+ if (down_interruptible(&efi_runtime_lock)) {
+ return EFI_ABORTED;
+ }
+ up(&efi_runtime_lock);
//# pattern-4, witnesses: 2
@@
@@
- if (!spin_trylock(&efi_runtime_lock)) {
- }
- spin_unlock(&efi_runtime_lock);
+ if (down_trylock(&efi_runtime_lock)) {
+ }
+ up(&efi_runtime_lock);
