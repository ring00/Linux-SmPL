//# pattern-20, witnesses: 28
@@
expression E0;
@@
- E0->dev
+ E0->hw
//# pattern-16, witnesses: 15
@@
expression IL0;
expression IL1;
@@
- struct ieee802154_dev * ieee = ieee;
- ieee = ieee802154_alloc_device(sizeof(unsigned long), &fakelb_ops);
- ieee->phy->channels_supported[IL0] |= IL1;
+ struct ieee802154_hw * hw = hw;
+ hw = ieee802154_alloc_hw(sizeof(unsigned long), &fakelb_ops);
+ hw->phy->channels_supported[IL0] |= IL1;
//# pattern-21, witnesses: 8
@@
expression E0;
@@
- ieee802154_free_device(E0->dev)
+ ieee802154_free_hw(E0->hw)
//# pattern-12, witnesses: 5
@@
expression E0;
@@
- ieee802154_unregister_device(E0->dev)
+ ieee802154_unregister_hw(E0->hw)
//# pattern-7, witnesses: 4
@r0@
identifier i, fn;
@@
struct ieee802154_ops i = {
    .xmit = fn,
};
@@
identifier dev;
identifier r0.fn;
identifier skb;
@@
- int fn(struct ieee802154_dev * dev, struct sk_buff * skb)
+ int fn(struct ieee802154_hw * hw, struct sk_buff * skb)
 {
     <...
- dev->priv
+ hw->priv
     ...>
 }
//# pattern-14, witnesses: 4
@r1@
identifier i, fn;
@@
struct ieee802154_ops i = {
    .set_channel = fn,
};
@@
identifier channel;
identifier dev;
identifier page;
identifier r1.fn;
@@
- int fn(struct ieee802154_dev * dev, int page, int channel)
+ int fn(struct ieee802154_hw * hw, int page, int channel)
 {
     <...
- dev->phy
+ hw->phy
     ...>
 }
//# pattern-6, witnesses: 3
@r2@
identifier i, fn;
@@
struct ieee802154_ops i = {
    .ed = fn,
};
@@
identifier dev;
identifier level;
identifier r2.fn;
@@
- int fn(struct ieee802154_dev * dev, u8 * level)
+ int fn(struct ieee802154_hw * hw, u8 * level)
 { ... }
//# pattern-11, witnesses: 3
@@
identifier dev;
identifier fn;
@@
- int fn(struct ieee802154_dev * dev)
+ int fn(struct ieee802154_hw * hw)
 {
     <...
- dev->priv
+ hw->priv
     ...>
 }
//# pattern-19, witnesses: 3
@@
expression E0;
@@
- ieee802154_register_device(E0->dev)
+ ieee802154_register_hw(E0->hw)
//# pattern-23, witnesses: 3
@r3@
identifier i, fn;
@@
struct ieee802154_ops i = {
    .set_hw_addr_filt = fn,
};
@@
identifier changed;
identifier dev;
identifier filt;
identifier r3.fn;
@@
- int fn(struct ieee802154_dev * dev, struct ieee802154_hw_addr_filt * filt, unsigned long changed)
+ int fn(struct ieee802154_hw * hw, struct ieee802154_hw_addr_filt * filt, unsigned long changed)
 {
     <...
- dev->priv
+ hw->priv
     ...>
 }
//# pattern-25, witnesses: 3
@r4@
identifier i, fn;
@@
struct ieee802154_ops i = {
    .set_channel = fn,
};
@@
identifier channel;
identifier hw;
identifier page;
identifier r4.fn;
@@
 int fn(struct ieee802154_hw * hw, int page, int channel)
 {
     <...
- dev->priv
+ hw->priv
     ...>
 }
//# pattern-1, witnesses: 2
@@
expression V0;
@@
- V0->priv
+ hw->priv
//# pattern-9, witnesses: 2
@@
expression list listE0;
@@
- ieee802154_alloc_device(listE0)
+ ieee802154_alloc_hw(listE0)
//# pattern-10, witnesses: 2
@@
identifier fn;
identifier hw;
@@
 int fn(struct ieee802154_hw * hw)
 {
     <...
- dev->priv
+ hw->priv
     ...>
 }
//# pattern-17, witnesses: 2
@@
expression V0;
expression V1;
expression V2;
expression V3;
@@
- struct ieee802154_dev *  = V0;
- V1 = ieee802154_alloc_device(sizeof(unsigned long), &V2);
- if (!V3) {
- }
+ struct ieee802154_hw * hw = hw;
+ hw = ieee802154_alloc_hw(sizeof(unsigned long), &V2);
+ if (!hw) {
+ }
//# pattern-18, witnesses: 2
@@
expression V0;
expression V1;
expression V2;
expression V3;
expression V4;
@@
- struct ieee802154_dev *  = V0;
- V1 = ieee802154_alloc_device(sizeof(unsigned long), &V2);
- V3->dev = V4;
+ struct ieee802154_hw * hw = hw;
+ hw = ieee802154_alloc_hw(sizeof(unsigned long), &V2);
+ V3->hw = hw;
//# pattern-26, witnesses: 2
@@
identifier fn;
identifier hw;
@@
 int fn(struct ieee802154_hw * hw)
 {
     <...
- dev->priv
+ hw->priv
     ...>
 }
