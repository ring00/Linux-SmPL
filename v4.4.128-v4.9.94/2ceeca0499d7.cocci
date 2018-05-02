//# pattern-16, witnesses: 4
@@
expression E0;
@@
- E0 = RC_BIT_NEC
+ E0 = RC_BIT_NEC | RC_BIT_NECX | RC_BIT_NEC32
//# pattern-18, witnesses: 3
@@
@@
- RC_TYPE_NEC
+ RC_TYPE_NEC32
//# pattern-4, witnesses: 2
@@
@@
- RC_BIT_NEC
+ RC_BIT_NECX
//# pattern-9, witnesses: 2
@@
expression E0;
@@
- RC_BIT_NEC | E0
+ RC_BIT_NEC | RC_BIT_NECX | RC_BIT_NEC32 | E0
