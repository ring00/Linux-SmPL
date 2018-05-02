//# pattern-9, witnesses: 2
@r0@
identifier i, fn;
@@
struct mlx5_interface i = {
    .event = fn,
};
@@
identifier event;
identifier mdev;
identifier param;
identifier vpriv;
@@
 void mlx5e_async_event(struct mlx5_core_dev * mdev, void * vpriv, enum mlx5_dev_event event, unsigned long param)
 {
     <...
- struct ptp_clock_event ptp_event = ptp_event;
- struct mlx5_eqe * eqe = NULL;
     ...>
 }
//# pattern-10, witnesses: 2
@@
@@
- struct mlx5e_tstamp * tstamp = rq->tstamp;
- if (unlikely(mlx5e_rx_hw_stamp(tstamp))) {
- mlx5e_fill_hwstamp(tstamp, get_cqe_ts(cqe), skb_hwtstamps(skb));
- }
+ if (unlikely(mlx5e_rx_hw_stamp(rq->tstamp))) {
+ skb_hwtstamps(skb)->hwtstamp = mlx5_timecounter_cyc2time(rq->clock, get_cqe_ts(cqe));
+ }
