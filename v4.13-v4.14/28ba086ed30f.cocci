//# pattern-2, witnesses: 5
@@
identifier s;
@@
 struct cpuidle_state [6] s = {
 };
//# pattern-6, witnesses: 5
@@
identifier s;
@@
 struct cpuidle_state [5] s = {
 };
//# pattern-8, witnesses: 3
@@
identifier s;
@@
 struct cpuidle_state [9] s = {
 };
//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct cpuidle_state [4] s = {
 };
//# pattern-5, witnesses: 2
@@
identifier s;
@@
 struct cpuidle_state [3] s = {
 };
//# pattern-9, witnesses: 2
@@
expression E0;
@@
- E0->enter_freeze
+ E0->enter_s2idle
