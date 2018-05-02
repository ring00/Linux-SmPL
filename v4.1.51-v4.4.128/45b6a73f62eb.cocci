//# pattern-4, witnesses: 4
@@
expression F1;
expression F2;
identifier s;
@@
 struct configfs_item_operations s = {
-    .show_attribute = F1,
-    .store_attribute = F2,
 };
//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct os_desc_attribute i = {
    .store = fn,
};
@@
identifier len;
identifier os_desc;
identifier page;
identifier r0.fn;
@@
- ssize_t fn(struct os_desc * os_desc, const char * page, size_t len)
+ ssize_t fn(struct config_item * item, const char * page, size_t len)
 {
     <...
- gi = to_gadget_info(os_desc->group.cg_item.ci_parent);
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct config_usb_cfg_attribute i = {
    .store = fn,
};
@@
identifier cfg;
identifier len;
identifier page;
identifier r1.fn;
@@
- ssize_t fn(struct config_usb_cfg * cfg, const char * page, size_t len)
+ ssize_t fn(struct config_item * item, const char * page, size_t len)
 {
     <...
- cfg->c
+ to_config_usb_cfg(item)->c
     ...>
 }
//# pattern-5, witnesses: 2
@r2@
identifier i, fn;
@@
struct os_desc_attribute i = {
    .show = fn,
};
@@
expression ME0;
identifier os_desc;
identifier page;
identifier r2.fn;
@@
- ssize_t fn(struct os_desc * os_desc, char * page)
+ ssize_t fn(struct config_item * item, char * page)
 {
     <...
- struct gadget_info * gi = gi;
- gi = to_gadget_info(os_desc->group.cg_item.ci_parent);
- return sprintf(page, "%d", ME0);
+ return sprintf(page, "%d", ME0);
     ...>
 }
//# pattern-9, witnesses: 2
@r3@
identifier i, fn;
@@
struct usb_os_desc_attribute i = {
    .show = fn,
};
@@
identifier desc;
identifier page;
identifier r3.fn;
@@
- ssize_t fn(struct usb_os_desc * desc, char * page)
+ ssize_t fn(struct config_item * item, char * page)
 {
     <...
- desc->ext_compat_id
+ to_usb_os_desc(item)->ext_compat_id
     ...>
 }
//# pattern-10, witnesses: 2
@r4@
identifier i, fn;
@@
struct gadget_info_attribute i = {
    .store = fn,
};
@@
identifier gi;
identifier len;
identifier page;
identifier r4.fn;
@@
- ssize_t fn(struct gadget_info * gi, const char * page, size_t len)
+ ssize_t fn(struct config_item * item, const char * page, size_t len)
 {
     <...
- gi->cdev
+ to_gadget_info(item)->cdev
     ...>
 }
//# pattern-18, witnesses: 2
@r5@
identifier i, fn;
@@
struct config_usb_cfg_attribute i = {
    .show = fn,
};
@@
identifier cfg;
identifier page;
identifier r5.fn;
@@
- ssize_t fn(struct config_usb_cfg * cfg, char * page)
+ ssize_t fn(struct config_item * item, char * page)
 {
     <...
- cfg->c
+ to_config_usb_cfg(item)->c
     ...>
 }
