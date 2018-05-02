//# pattern-2, witnesses: 9
@@
expression list listE0;
@@
- int ts_state = ts_state;
- ts_state = irq_ts_save(listE0);
- irq_ts_restore(ts_state);
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct shash_alg i = {
    .update = fn,
};
@@
identifier data;
identifier desc;
identifier len;
expression list listE0;
expression list listE1;
identifier r0.fn;
@@
 int fn(struct shash_desc * desc, const u8 * data, unsigned int len)
 {
     <...
- int ts_state = ts_state;
- if (partial + len >= 64) {
- if (partial) {
- ts_state = irq_ts_save(listE0);
- irq_ts_restore(ts_state);
- }
- if (len - done >= 64) {
- ts_state = irq_ts_save(listE1);
- irq_ts_restore(ts_state);
- }
- }
+ if (partial + len >= 64) {
+ if (partial) {
+ }
+ if (len - done >= 64) {
+ }
+ }
     ...>
 }
