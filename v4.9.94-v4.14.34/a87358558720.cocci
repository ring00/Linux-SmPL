//# pattern-1, witnesses: 3
@@
@@
- trace_xdp_redirect(dev, fwd, xdp_prog, XDP_REDIRECT, err)
+ trace_xdp_redirect(dev, xdp_prog, XDP_REDIRECT, index, err)
