//# pattern-1, witnesses: 2
@@
statement S0;
identifier adap;
typedef bool;
identifier is_reply;
identifier msg;
@@
 int cec_receive_notify(struct cec_adapter * adap, struct cec_msg * msg, bool is_reply)
 {
     <...
- if (!adap->capabilities & CEC_CAP_RC) { S0 }
+ if (!adap->capabilities & CEC_CAP_RC || !adap->log_addrs.flags & CEC_LOG_ADDRS_FL_ALLOW_RC_PASSTHRU) { S0 }
     ...>
 }
