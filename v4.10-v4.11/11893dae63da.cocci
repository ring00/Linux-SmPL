//# pattern-1, witnesses: 2
@@
@@
- ci->platdata->notify_event(ci, CI_HDRC_CONTROLLER_RESET_EVENT);
+ ret = ci->platdata->notify_event(ci, CI_HDRC_CONTROLLER_RESET_EVENT);
+ if (ret) {
+ return ret;
+ }
