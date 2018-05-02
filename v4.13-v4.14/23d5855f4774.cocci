//# pattern-2, witnesses: 4
@@
identifier fn;
identifier state;
typedef suspend_state_t;
@@
 int fn(suspend_state_t state)
 {
     <...
- state == PM_SUSPEND_TO_IDLE && freeze_ops
+ state == PM_SUSPEND_TO_IDLE && s2idle_ops
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- freeze_ops->restore
+ s2idle_ops->restore
//# pattern-4, witnesses: 2
@@
@@
- freeze_ops->prepare
+ s2idle_ops->prepare
//# pattern-5, witnesses: 2
@@
@@
- freeze_ops->begin
+ s2idle_ops->begin
//# pattern-10, witnesses: 2
@@
@@
- freeze_ops->end
+ s2idle_ops->end
