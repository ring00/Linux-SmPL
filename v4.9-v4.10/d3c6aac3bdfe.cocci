//# pattern-2, witnesses: 5
@r0@
identifier i, fn;
@@
struct mmc_host_ops i = {
    .pre_req = fn,
};
@@
typedef bool;
identifier is_first_req;
identifier mmc;
identifier mrq;
identifier r0.fn;
@@
- void fn(struct mmc_host * mmc, struct mmc_request * mrq, bool is_first_req)
+ void fn(struct mmc_host * mmc, struct mmc_request * mrq)
 { ... }
//# pattern-1, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier areq;
identifier host;
identifier ret_stat;
@@
 struct mmc_async_req * mmc_start_req(struct mmc_host * host, struct mmc_async_req * areq, enum mmc_blk_status * ret_stat)
 {
     <...
- mmc_pre_req(host, areq->mrq, !host->areq)
+ mmc_pre_req(host, areq->mrq)
     ...>
 }
