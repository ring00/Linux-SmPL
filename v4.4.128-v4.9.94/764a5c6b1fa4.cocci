//# pattern-11, witnesses: 6
@@
expression F1;
identifier s;
@@
 const struct xattr_handler s = {
-    .list = F1,
 };
//# pattern-4, witnesses: 4
@@
expression E1;
expression S2;
type T0;
typedef bool;
identifier dentry;
identifier fn;
identifier handler;
identifier list;
identifier list_size;
identifier name;
identifier name_len;
@@
- size_t fn(const struct xattr_handler * handler, struct dentry * dentry, char * list, size_t list_size, const char * name, size_t name_len)
+ bool fn(struct dentry * dentry)
 {
     <...
- T0 prefix_len = E1;
- const size_t total_len = prefix_len + name_len + 1;
- if (list && total_len <= list_size) {
- memcpy(list, S2, prefix_len);
- memcpy(list + prefix_len, name, name_len);
- list[prefix_len + name_len] = ;
- }
     ...>
 }
//# pattern-5, witnesses: 4
@@
expression E1;
expression E2;
type T0;
typedef bool;
identifier dentry;
identifier fn;
@@
 bool fn(struct dentry * dentry)
 {
     <...
- T0 prefix_len = E1;
- const size_t total_len = prefix_len + name_len + 1;
- if (!E2) {
- return 0;
- }
- return total_len;
+ return E2;
     ...>
 }
//# pattern-10, witnesses: 2
@r4@
identifier i, fn;
@@
struct xattr_handler i = {
    .list = fn,
};
@@
expression E0;
expression E2;
expression F1;
expression V3;
typedef bool;
identifier dentry;
identifier r4.fn;
@@
 bool fn(struct dentry * dentry)
 {
     <...
- size_t  = E0;
- if (!F1(E2)) {
- return 0;
- }
- return V3;
+ return F1(E2);
     ...>
 }
