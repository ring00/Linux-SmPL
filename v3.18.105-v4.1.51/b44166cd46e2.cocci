//# pattern-3, witnesses: 2
@@
@@
- unmap_data.done = &free_persistent_gnts_unmap_callback;
//# pattern-4, witnesses: 2
@@
@@
- struct completion unmap_completion = unmap_completion;
- unmap_data.data = &unmap_completion;
//# pattern-5, witnesses: 2
@@
@@
- struct completion unmap_completion = unmap_completion;
- init_completion(&unmap_completion);
