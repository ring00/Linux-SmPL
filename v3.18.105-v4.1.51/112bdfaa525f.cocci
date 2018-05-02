//# pattern-1, witnesses: 2
@@
identifier fn;
identifier info;
@@
 void fn(struct arizona_extcon_info * info)
 {
     <...
- arizona_extcon_do_magic(info, 16384)
+ arizona_extcon_hp_clamp(info, true)
     ...>
 }
