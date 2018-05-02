//# pattern-1, witnesses: 2
@@
statement S0;
identifier fn;
identifier hcd;
@@
 int fn(struct usb_hcd * hcd)
 {
     <...
- if (xhci_plat_type_is(hcd, XHCI_PLAT_TYPE_RENESAS_RCAR_GEN2)) { S0 }
+ if (xhci_plat_type_is(hcd, XHCI_PLAT_TYPE_RENESAS_RCAR_GEN2) || xhci_plat_type_is(hcd, XHCI_PLAT_TYPE_RENESAS_RCAR_GEN3)) { S0 }
     ...>
 }
