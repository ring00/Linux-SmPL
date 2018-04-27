//# pattern-1, witnesses: 23
@@
expression E0;
expression E1;
@@
- E0->channels_supported[E1]
+ E0->supported.channels[E1]
//# pattern-2, witnesses: 2
@@
@@
- rdev->wpan_phy.channels_supported
+ rdev->wpan_phy.supported.channels
