//# pattern-6, witnesses: 6
@@
identifier di;
identifier sig;
@@
 void ipu_di_config_clock(struct ipu_di * di, const struct ipu_di_signal_cfg * sig)
 {
     <...
- sig->pixelclock
+ sig->mode.pixelclock
     ...>
 }
//# pattern-12, witnesses: 4
@@
identifier di;
identifier sig;
@@
 void ipu_di_config_clock(struct ipu_di * di, const struct ipu_di_signal_cfg * sig)
 {
     <...
- sig->pixelclock
+ sig->mode.pixelclock
     ...>
 }
//# pattern-18, witnesses: 3
@@
expression E0;
identifier di;
identifier div;
identifier sig;
@@
 void ipu_di_sync_config_noninterlaced(struct ipu_di * di, struct ipu_di_signal_cfg * sig, int div)
 {
     <...
- sig->v_sync_width * E0
+ sig->mode.vsync_len * E0
     ...>
 }
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
statement S0;
identifier di;
identifier sig;
@@
 int ipu_di_init_sync_panel(struct ipu_di * di, struct ipu_di_signal_cfg * sig)
 {
     <...
- if (sig->Vsync_pol) { S0 }
+ if (sig->mode.flags & DISPLAY_FLAGS_VSYNC_HIGH) { S0 }
     ...>
 }
//# pattern-9, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
statement S0;
identifier di;
identifier sig;
@@
 int ipu_di_init_sync_panel(struct ipu_di * di, struct ipu_di_signal_cfg * sig)
 {
     <...
- if (sig->Hsync_pol) { S0 }
+ if (sig->mode.flags & DISPLAY_FLAGS_HSYNC_HIGH) { S0 }
     ...>
 }
//# pattern-19, witnesses: 2
@@
expression E0;
identifier di;
identifier div;
identifier sig;
@@
 void ipu_di_sync_config_noninterlaced(struct ipu_di * di, struct ipu_di_signal_cfg * sig, int div)
 {
     <...
- sig->h_sync_width * E0
+ sig->mode.hsync_len * E0
     ...>
 }
