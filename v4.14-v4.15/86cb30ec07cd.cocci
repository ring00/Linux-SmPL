//# pattern-3, witnesses: 12
@@
expression E2;
expression F1;
expression ME0;
@@
- setup_timer(&ME0, F1, E2)
+ timer_setup(&ME0, F1, 0)
//# pattern-9, witnesses: 2
@@
expression F1;
expression ME0;
identifier priv;
@@
 void iwl_tt_initialize(struct iwl_priv * priv)
 {
     <...
- setup_timer(&ME0, F1, priv)
+ timer_setup(&ME0, F1, 0)
     ...>
 }
