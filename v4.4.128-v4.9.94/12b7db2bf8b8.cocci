//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct musb_platform_ops i = {
    .phy_callback = fn,
};
@@
identifier status;
@@
- void omap2430_musb_mailbox(enum musb_vbus_id_status status)
+ int omap2430_musb_mailbox(enum musb_vbus_id_status status)
 {
     <...
- return;
+ return -EPROBE_DEFER;
     ...>
 }
