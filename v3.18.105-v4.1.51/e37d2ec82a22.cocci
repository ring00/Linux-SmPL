//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct ieee802154_ops i = {
    .set_channel = fn,
};
@@
identifier channel;
identifier hw;
identifier page;
identifier r0.fn;
typedef u8;
@@
- int fn(struct ieee802154_hw * hw, int page, int channel)
+ int fn(struct ieee802154_hw * hw, u8 page, u8 channel)
 { ... }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct at86rf2xx_chip_data i = {
    .set_channel = fn,
};
@@
identifier channel;
identifier lp;
identifier page;
identifier r1.fn;
typedef u8;
@@
- int fn(struct at86rf230_local * lp, int page, int channel)
+ int fn(struct at86rf230_local * lp, u8 page, u8 channel)
 { ... }
