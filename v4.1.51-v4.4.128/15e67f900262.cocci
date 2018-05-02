//# pattern-2, witnesses: 2
@@
@@
- if (lpm_disable_error && driver->disable_hub_initiated_lpm) {
- }
+ if (driver->disable_hub_initiated_lpm) {
+ if (lpm_disable_error) {
+ }
+ }
