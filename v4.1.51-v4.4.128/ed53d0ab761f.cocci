//# pattern-1, witnesses: 9
@@
@@
- req->rcv_wnd
+ req->__req_common.skc_rcv_wnd
//# pattern-2, witnesses: 6
@@
@@
- req->window_clamp
+ req->__req_common.skc_window_clamp
//# pattern-3, witnesses: 3
@@
expression E0;
@@
- req->window_clamp = E0
+ req->__req_common.skc_window_clamp = E0
