//# pattern-3, witnesses: 2
@@
@@
- usb_cancel_queued_reset(intf);
//# pattern-6, witnesses: 2
@@
expression IL0;
@@
- iface->reset_running = IL0;
