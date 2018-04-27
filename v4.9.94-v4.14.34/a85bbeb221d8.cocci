//# pattern-12, witnesses: 64
@r0@
identifier i, fn;
@@
struct sctp_sm_table_entry_t i = {
    . = fn,
};
@@
identifier arg;
identifier asoc;
identifier commands;
identifier ep;
identifier net;
identifier r0.fn;
typedef sctp_disposition_t;
identifier type;
@@
- sctp_disposition_t fn(struct net * net, const struct sctp_endpoint * ep, const struct sctp_association * asoc, const union sctp_subtype type, void * arg, sctp_cmd_seq_t * commands)
+ sctp_disposition_t fn(struct net * net, const struct sctp_endpoint * ep, const struct sctp_association * asoc, const union sctp_subtype type, void * arg, struct sctp_cmd_seq * commands)
 { ... }
//# pattern-1, witnesses: 12
@@
identifier arg;
identifier asoc;
identifier commands;
identifier ep;
identifier fn;
identifier net;
typedef sctp_disposition_t;
identifier type;
@@
 sctp_disposition_t fn(struct net * net, const struct sctp_endpoint * ep, const struct sctp_association * asoc, const union sctp_subtype type, void * arg, struct sctp_cmd_seq * commands)
 { ... }
