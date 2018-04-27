//# pattern-6, witnesses: 16
@@
expression E1;
expression E2;
expression EC0;
@@
- sctp_make_control(asoc, EC0, E1, E2)
+ sctp_make_control(asoc, EC0, E1, E2, GFP_ATOMIC)
//# pattern-1, witnesses: 6
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
- sctp_outq_uncork(&asoc->outqueue)
+ sctp_outq_uncork(&asoc->outqueue, gfp)
     ...>
 }
//# pattern-17, witnesses: 4
@@
identifier pkt;
identifier q;
identifier rtx_timeout;
identifier start_timer;
@@
 int sctp_outq_flush_rtx(struct sctp_outq * q, struct sctp_packet * pkt, int rtx_timeout, int * start_timer)
 {
     <...
- sctp_packet_transmit(pkt)
+ sctp_packet_transmit(pkt, GFP_ATOMIC)
     ...>
 }
//# pattern-11, witnesses: 2
@@
expression V0;
identifier asoc;
identifier from;
identifier sinfo;
@@
 struct sctp_datamsg * sctp_datamsg_from_user(struct sctp_association * asoc, struct sctp_sndrcvinfo * sinfo, struct iov_iter * from)
 {
     <...
- sctp_make_datafrag_empty(asoc, sinfo, V0, frag, 0)
+ sctp_make_datafrag_empty(asoc, sinfo, V0, frag, 0, GFP_KERNEL)
     ...>
 }
//# pattern-25, witnesses: 2
@@
expression EC0;
@@
- sctp_make_control(asoc, EC0, 0, chunksize)
+ sctp_make_control(asoc, EC0, 0, chunksize, gfp)
