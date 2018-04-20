//# pattern-6, witnesses: 3
@@
expression E0;
identifier bio;
typedef blk_qc_t;
identifier fn;
identifier q;
@@
 blk_qc_t fn(struct request_queue * q, struct bio * bio)
 {
     <...
- generic_start_io_acct(rw, bio_sectors(bio), &E0->part0)
+ generic_start_io_acct(q, rw, bio_sectors(bio), &E0->part0)
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression E0;
identifier fn;
identifier req;
@@
 void fn(struct request * req)
 {
     <...
- part_dec_in_flight(part, E0)
+ part_dec_in_flight(req->q, part, E0)
     ...>
 }
//# pattern-13, witnesses: 2
@@
identifier fn;
identifier req;
@@
 void fn(struct request * req)
 {
     <...
- part_round_stats(cpu, part)
+ part_round_stats(req->q, cpu, part)
     ...>
 }
//# pattern-15, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier cpu;
identifier part;
@@
- void part_round_stats(int cpu, struct hd_struct * part)
+ void part_round_stats(struct request_queue * q, int cpu, struct hd_struct * part)
 {
     <...
- part_round_stats_single(cpu, E0, now)
+ part_round_stats_single(q, cpu, E0, now)
     ...>
 }
