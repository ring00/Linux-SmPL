//# pattern-1, witnesses: 2
@@
expression E1;
expression V0;
@@
- state->crtcs[V0] = E1
+ state->crtcs[V0].ptr = E1
