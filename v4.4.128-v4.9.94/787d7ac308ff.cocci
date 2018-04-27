//# pattern-1, witnesses: 2
@@
expression E0;
@@
- uo_priv->offload->port == uh->dest && E0
+ net_eq(read_pnet(&uo_priv->net), dev_net(skb->dev)) && uo_priv->offload->port == uh->dest && E0
