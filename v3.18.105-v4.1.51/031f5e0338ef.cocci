//# pattern-2, witnesses: 5
@r0@
identifier fn;
expression P0, P1;
@@
sprintf(P0, P1, fn)
@@
expression IL0;
expression IL1;
identifier tun;
@@
 int tun_flags(struct tun_struct * tun)
 {
     <...
- int flags = 0;
- if (tun->flags & IL0) {
- flags |= IL1;
- }
     ...>
 }
