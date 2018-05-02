//# pattern-8, witnesses: 3
@r0@
identifier i, fn;
@@
struct xenbus_watch i = {
    .callback = fn,
};
@@
identifier len;
identifier r0.fn;
identifier vec;
identifier watch;
@@
- void fn(struct xenbus_watch * watch, const char ** vec, unsigned int len)
+ void fn(struct xenbus_watch * watch, const char * path, const char * token)
 { ... }
//# pattern-12, witnesses: 3
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier ignore_on_shutdown;
identifier len;
identifier vec;
identifier watch;
@@
- void xenbus_otherend_changed(struct xenbus_watch * watch, const char ** vec, unsigned int len, int ignore_on_shutdown)
+ void xenbus_otherend_changed(struct xenbus_watch * watch, const char * path, const char * token, int ignore_on_shutdown)
 {
     <...
- vec[XS_WATCH_PATH]
+ path
     ...>
 }
//# pattern-3, witnesses: 2
@r2@
identifier i, fn;
@@
struct xenbus_watch i = {
    .callback = fn,
};
@@
identifier path;
identifier r2.fn;
identifier token;
identifier watch;
@@
 void fn(struct xenbus_watch * watch, const char * path, const char * token)
 {
     <...
- vec[XS_WATCH_PATH]
+ path
     ...>
 }
//# pattern-4, witnesses: 2
@r3@
identifier i, fn;
@@
struct xen_bus_type i = {
    .otherend_changed = fn,
};
@@
expression IL0;
identifier path;
identifier r3.fn;
identifier token;
identifier watch;
@@
 void fn(struct xenbus_watch * watch, const char * path, const char * token)
 {
     <...
- xenbus_otherend_changed(watch, vec, len, IL0)
+ xenbus_otherend_changed(watch, path, token, IL0)
     ...>
 }
//# pattern-14, witnesses: 2
@r4@
identifier fn;
expression P0, P1, P3;
@@
xenbus_watch_pathfmt(P0, P1, fn, P3)
@@
identifier path;
identifier r4.fn;
identifier token;
identifier watch;
@@
 void fn(struct xenbus_watch * watch, const char * path, const char * token)
 { ... }
