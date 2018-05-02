//# pattern-5, witnesses: 3
@@
@@
- EXTCON_USB
+ EXTCON_USB
//# pattern-7, witnesses: 3
@@
identifier s;
@@
- const enum extcon [3] s = {
+ const unsigned int [3] s = {
-    . = EXTCON_USB,
-    . = EXTCON_USB_HOST,
-    . = EXTCON_NONE,
+    . = 1,
+    . = 2,
+    . = 0,
 };
//# pattern-14, witnesses: 3
@@
@@
- EXTCON_DOCK
+ EXTCON_DOCK
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier edev;
identifier id;
identifier nb;
identifier r0.fn;
@@
- int fn(struct extcon_dev * edev, enum extcon id, struct notifier_block * nb)
+ int fn(struct extcon_dev * edev, unsigned int id, struct notifier_block * nb)
 { ... }
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0 = EXTCON_JIG
+ E0 = EXTCON_JIG
//# pattern-6, witnesses: 2
@@
identifier edev;
identifier fn;
identifier id;
@@
- int fn(struct extcon_dev * edev, const enum extcon id)
+ int fn(struct extcon_dev * edev, const unsigned int id)
 { ... }
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- E0 = EXTCON_USB_HOST
+ E0 = EXTCON_USB_HOST
//# pattern-13, witnesses: 2
@@
@@
- EXTCON_NONE
+ EXTCON_NONE
//# pattern-15, witnesses: 2
@@
expression E0;
@@
- E0 = EXTCON_TA
+ E0 = EXTCON_TA
//# pattern-21, witnesses: 2
@@
@@
- EXTCON_HEADPHONE
+ EXTCON_HEADPHONE
