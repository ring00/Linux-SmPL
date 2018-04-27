//# pattern-2, witnesses: 8
@@
expression E0;
@@
- if (E0->flags & ASYNC_CLOSING) {
- }
//# pattern-1, witnesses: 4
@@
expression E0;
expression E2;
statement S1;
@@
- if (!port->flags & ASYNC_CLOSING && E0) { S1 }
+ if (do_clocal || E2) { S1 }
