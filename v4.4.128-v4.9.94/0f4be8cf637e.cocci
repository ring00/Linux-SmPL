//# pattern-3, witnesses: 2
@@
identifier s;
@@
- const u8 [18] s = {
+ const u8 [20] s = {
+    . = 2,
+    . = 3,
 };
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct stmpe_variant_info i = {
    .enable_autosleep = fn,
};
@@
identifier autosleep_timeout;
identifier stmpe;
@@
 int stmpe1601_autosleep(struct stmpe * stmpe, int autosleep_timeout)
 {
     <...
- STMPE1601_REG_SYS_CTRL2
+ stmpe->regs[STMPE_IDX_SYS_CTRL2]
     ...>
 }
//# pattern-7, witnesses: 2
@@
identifier stmpe;
@@
 int stmpe1801_reset(struct stmpe * stmpe)
 {
     <...
- STMPE1801_REG_SYS_CTRL
+ stmpe->regs[STMPE_IDX_SYS_CTRL]
     ...>
 }
