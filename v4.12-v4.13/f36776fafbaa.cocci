//# pattern-1, witnesses: 3
@@
expression E1;
identifier PV0;
@@
- enum kobject_action action = action;
- if (kobject_action_type(PV0, count, &action) == 0) {
- kobject_uevent(&E1->kobj, action);
- }
+ kobject_synth_uevent(&E1->kobj, PV0, count);
