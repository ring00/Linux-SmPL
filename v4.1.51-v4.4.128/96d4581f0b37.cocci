//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct nfc_ops i = {
    .deactivate_target = fn,
};
@@
identifier nfc_dev;
identifier r0.fn;
identifier target;
typedef u8;
@@
- void fn(struct nfc_dev * nfc_dev, struct nfc_target * target)
+ void fn(struct nfc_dev * nfc_dev, struct nfc_target * target, u8 mode)
 { ... }
