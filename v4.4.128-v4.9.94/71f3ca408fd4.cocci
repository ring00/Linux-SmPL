//# pattern-13, witnesses: 11
@@
@@
- rxrpc_free_skb(skb)
+ rxrpc_free_skb(skb, rxrpc_skb_rx_freed)
//# pattern-12, witnesses: 5
@@
@@
- rxrpc_free_skb(skb)
+ rxrpc_free_skb(skb, rxrpc_skb_tx_freed)
//# pattern-20, witnesses: 4
@@
@@
- rxrpc_see_skb(skb)
+ rxrpc_see_skb(skb, rxrpc_skb_rx_seen)
//# pattern-4, witnesses: 2
@@
@@
- rxrpc_free_skb(call->rxtx_buffer[i])
+ rxrpc_free_skb(call->rxtx_buffer[i], )
//# pattern-18, witnesses: 2
@@
@@
- rxrpc_see_skb(skb)
+ rxrpc_see_skb(skb, rxrpc_skb_tx_seen)
//# pattern-23, witnesses: 2
@@
@@
- rxrpc_new_skb(skb)
+ rxrpc_new_skb(skb, rxrpc_skb_rx_received)
//# pattern-24, witnesses: 2
@@
@@
- atomic_dec_return(&rxrpc_n_skbs)
+ atomic_dec_return(select_skb_count)
//# pattern-25, witnesses: 2
@@
@@
- rxrpc_get_skb(skb)
+ rxrpc_get_skb(skb, rxrpc_skb_tx_got)
