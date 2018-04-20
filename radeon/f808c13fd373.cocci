//# pattern-12, witnesses: 11
@@
@@
- RB_ROOT
+ RB_ROOT_CACHED
//# pattern-18, witnesses: 5
@@
expression E0;
@@
- E0->rb_root
+ E0->rb_root.rb_root
//# pattern-20, witnesses: 3
@@
expression E0;
@@
- E0->rb_root
+ E0->root
//# pattern-2, witnesses: 2
@@
@@
- &mapping->i_mmap
+ &mapping->i_mmap.rb_root
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0->interval_tree
+ E0->interval_tree.rb_root
//# pattern-7, witnesses: 2
@@
@@
- &vm->va
+ &vm->va.rb_root
