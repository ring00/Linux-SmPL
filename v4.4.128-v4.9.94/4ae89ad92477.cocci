//# pattern-3, witnesses: 2
@@
expression IL2;
identifier PV0;
identifier PV1;
@@
- int verdict = verdict;
- if (PV0->bitmask & 8) {
- verdict = 0;
- }
- if (PV1->bitmask & IL2) {
- verdict = 0;
- }
+ if (PV0->bitmask & 8) {
+ }
+ if (PV1->bitmask & IL2) {
+ }
//# pattern-4, witnesses: 2
@@
expression IL2;
identifier PV0;
identifier PV1;
@@
- int verdict = verdict;
- if (PV0->bitmask & 8) {
- verdict = 0;
- }
- if (PV1->bitmask & IL2) {
- verdict = 0;
- }
+ if (PV0->bitmask & 8) {
+ }
+ if (PV1->bitmask & IL2) {
+ }
