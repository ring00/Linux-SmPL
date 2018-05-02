//# pattern-12, witnesses: 3
@@
identifier fn;
identifier fwnode;
@@
- struct fwnode_handle * fn(struct fwnode_handle * fwnode)
+ struct fwnode_handle * fn(const struct fwnode_handle * fwnode)
 { ... }
//# pattern-23, witnesses: 3
@@
identifier fn;
identifier fwnode;
@@
 struct fwnode_handle * fn(const struct fwnode_handle * fwnode)
 { ... }
//# pattern-2, witnesses: 2
@@
identifier fn;
identifier fwnode;
identifier propname;
@@
- struct fwnode_handle * fn(struct fwnode_handle * fwnode, const char * propname)
+ struct fwnode_handle * fn(const struct fwnode_handle * fwnode, const char * propname)
 { ... }
//# pattern-3, witnesses: 2
@@
identifier fn;
identifier fwnode;
@@
 struct fwnode_handle * fn(const struct fwnode_handle * fwnode)
 { ... }
//# pattern-4, witnesses: 2
@@
identifier endpoint;
identifier fn;
identifier fwnode;
@@
- int fn(struct fwnode_handle * fwnode, struct fwnode_endpoint * endpoint)
+ int fn(const struct fwnode_handle * fwnode, struct fwnode_endpoint * endpoint)
 { ... }
//# pattern-5, witnesses: 2
@@
identifier elem_size;
identifier fn;
identifier fwnode;
identifier nval;
identifier propname;
identifier val;
@@
- int fn(struct fwnode_handle * fwnode, const char * propname, unsigned int elem_size, void * val, size_t nval)
+ int fn(const struct fwnode_handle * fwnode, const char * propname, unsigned int elem_size, void * val, size_t nval)
 { ... }
//# pattern-6, witnesses: 2
@@
identifier child;
identifier fn;
identifier fwnode;
@@
- struct fwnode_handle * fn(struct fwnode_handle * fwnode, struct fwnode_handle * child)
+ struct fwnode_handle * fn(const struct fwnode_handle * fwnode, struct fwnode_handle * child)
 { ... }
//# pattern-7, witnesses: 2
@@
identifier fn;
identifier fwnode;
@@
 struct fwnode_handle * fn(const struct fwnode_handle * fwnode)
 { ... }
//# pattern-8, witnesses: 2
@@
identifier child;
identifier fn;
identifier fwnode;
@@
 struct fwnode_handle * fn(const struct fwnode_handle * fwnode, struct fwnode_handle * child)
 { ... }
//# pattern-9, witnesses: 2
@@
typedef bool;
identifier fn;
identifier fwnode;
@@
- bool fn(struct fwnode_handle * fwnode)
+ bool fn(const struct fwnode_handle * fwnode)
 { ... }
//# pattern-10, witnesses: 2
@@
identifier fn;
identifier fwnode;
identifier nval;
identifier propname;
identifier val;
@@
- int fn(struct fwnode_handle * fwnode, const char * propname, const char ** val, size_t nval)
+ int fn(const struct fwnode_handle * fwnode, const char * propname, const char ** val, size_t nval)
 { ... }
//# pattern-11, witnesses: 2
@@
identifier fn;
identifier fwnode;
identifier propname;
@@
 struct fwnode_handle * fn(const struct fwnode_handle * fwnode, const char * propname)
 { ... }
//# pattern-15, witnesses: 2
@@
typedef bool;
identifier childname;
identifier fn;
identifier fwnode;
@@
- bool fn(struct fwnode_handle * fwnode, const char * childname)
+ bool fn(const struct fwnode_handle * fwnode, const char * childname)
 { ... }
//# pattern-19, witnesses: 2
@@
identifier fn;
identifier fwnode;
identifier prev;
@@
 struct fwnode_handle * fn(const struct fwnode_handle * fwnode, struct fwnode_handle * prev)
 { ... }
//# pattern-21, witnesses: 2
@r0@
identifier i, fn;
@@
struct fwnode_operations i = {
    .property_read_string_array = fn,
};
@@
identifier fwnode;
identifier nval;
identifier propname;
identifier r0.fn;
identifier val;
@@
 int fn(const struct fwnode_handle * fwnode, const char * propname, const char ** val, size_t nval)
 { ... }
