//# pattern-1, witnesses: 2
@@
@@
- key_control->is_fragment = 1;
+ key_control->flags |= FLOW_DIS_IS_FRAGMENT;
//# pattern-2, witnesses: 2
@@
@@
- key_control->first_frag = 1;
+ key_control->flags |= FLOW_DIS_FIRST_FRAG;
