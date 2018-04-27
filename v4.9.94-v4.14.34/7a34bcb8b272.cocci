//# pattern-1, witnesses: 2
@@
expression V0;
expression V1;
@@
- if (!static_key_enabled) {
- static_key_slow_inc(&V0);
- }
+ static_key_enable(&V1);
