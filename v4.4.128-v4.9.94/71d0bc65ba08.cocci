//# pattern-4, witnesses: 3
@@
expression E0;
@@
- E0 |= IRQ_HANDLED
+ E0 |= 1
//# pattern-1, witnesses: 2
@@
@@
- return ret;
+ return IRQ_RETVAL(ret);
//# pattern-5, witnesses: 2
@@
identifier s;
@@
- <unknown type> s = {
+ int s = {
 };
