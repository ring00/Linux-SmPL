//# pattern-3, witnesses: 2
@@
identifier ci;
@@
 int ci_usb_phy_init(struct ci_hdrc * ci)
 {
     <...
- usb_phy_init(ci->usb_phy)
+ _ci_usb_phy_init(ci)
     ...>
 }
