//# pattern-1, witnesses: 2
@@
@@
- if (initial_rotation != -1) {
- }
+ if (p->con_rotate == -1) {
+ p->con_rotate = info->fbcon_rotate_hint;
+ }
+ if (p->con_rotate == -1) {
+ }
