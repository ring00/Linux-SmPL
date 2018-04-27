//# pattern-4, witnesses: 16
@@
expression E0;
@@
- E0->stream
+ &E0->stream
//# pattern-5, witnesses: 6
@@
expression E0;
expression E1;
@@
- E0->stream->out[E1]
+ E0->stream.out[E1]
//# pattern-3, witnesses: 3
@@
expression E0;
@@
- E0 >= asoc->stream->incnt
+ E0 >= asoc->stream.incnt
//# pattern-6, witnesses: 3
@@
expression E0;
@@
- E0 >= asoc->stream->outcnt
+ E0 >= asoc->stream.outcnt
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0 = asoc->stream->outcnt
+ E0 = asoc->stream.outcnt
//# pattern-14, witnesses: 2
@@
expression E0;
@@
- E0 = asoc->stream->incnt
+ E0 = asoc->stream.incnt
//# pattern-16, witnesses: 2
@@
expression E1;
identifier PV0;
identifier asoc;
identifier new;
@@
 void sctp_assoc_update(struct sctp_association * asoc, struct sctp_association * new)
 {
     <...
- PV0->stream = E1;
     ...>
 }
