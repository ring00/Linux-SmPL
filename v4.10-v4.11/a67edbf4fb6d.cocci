//# pattern-9, witnesses: 2
@r0@
identifier fn;
expression P1;
@@
llvm.expect.i64(fn, P1)
@@
typedef bool;
identifier di;
identifier rq;
identifier xdp;
@@
- void mlx5e_xmit_xdp_frame(struct mlx5e_rq * rq, struct mlx5e_dma_info * di, const struct xdp_buff * xdp)
+ bool mlx5e_xmit_xdp_frame(struct mlx5e_rq * rq, struct mlx5e_dma_info * di, const struct xdp_buff * xdp)
 {
     <...
- return;
+ return false;
     ...>
 }
//# pattern-10, witnesses: 2
@r1@
identifier fn;
expression P1;
@@
llvm.expect.i64(fn, P1)
@@
typedef bool;
identifier nn;
identifier pkt_len;
identifier pkt_off;
identifier rx_ring;
identifier rxbuf;
identifier tx_ring;
@@
- void nfp_net_tx_xdp_buf(struct nfp_net * nn, struct nfp_net_rx_ring * rx_ring, struct nfp_net_tx_ring * tx_ring, struct nfp_net_rx_buf * rxbuf, unsigned int pkt_off, unsigned int pkt_len)
+ bool nfp_net_tx_xdp_buf(struct nfp_net * nn, struct nfp_net_rx_ring * rx_ring, struct nfp_net_tx_ring * tx_ring, struct nfp_net_rx_buf * rxbuf, unsigned int pkt_off, unsigned int pkt_len)
 {
     <...
- return;
+ return false;
     ...>
 }
