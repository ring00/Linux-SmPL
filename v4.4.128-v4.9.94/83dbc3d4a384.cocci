//# pattern-3, witnesses: 2
@@
identifier asoc;
identifier commands;
identifier ep;
identifier event_arg;
identifier event_type;
identifier gfp;
typedef gfp_t;
typedef sctp_disposition_t;
typedef sctp_event_t;
typedef sctp_state_t;
typedef sctp_subtype_t;
identifier state;
identifier status;
identifier subtype;
@@
 int sctp_cmd_interpreter(sctp_event_t event_type, sctp_subtype_t subtype, sctp_state_t state, struct sctp_endpoint * ep, struct sctp_association * asoc, void * event_arg, sctp_disposition_t status, sctp_cmd_seq_t * commands, gfp_t gfp)
 {
     <...
- error = sctp_outq_uncork(&asoc->outqueue, gfp);
+ sctp_outq_uncork(&asoc->outqueue, gfp);
     ...>
 }
