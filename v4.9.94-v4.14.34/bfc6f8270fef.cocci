//# pattern-8, witnesses: 64
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
- sctp_disposition_t fn(struct net * net, const struct sctp_endpoint * ep, const struct sctp_association * asoc, const sctp_subtype_t type, void * arg, sctp_cmd_seq_t * commands)
+ sctp_disposition_t fn(struct net * net, const struct sctp_endpoint * ep, const struct sctp_association * asoc, const union sctp_subtype type, void * arg, sctp_cmd_seq_t * commands)
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
 sctp_disposition_t fn(struct net * net, const struct sctp_endpoint * ep, const struct sctp_association * asoc, const union sctp_subtype type, void * arg, sctp_cmd_seq_t * commands)
 { ... }
//# pattern-5, witnesses: 4
@@
identifier id;
identifier r1.fn;
@@
- const char * fn(const sctp_subtype_t id)
+ const char * fn(const union sctp_subtype id)
 { ... }
