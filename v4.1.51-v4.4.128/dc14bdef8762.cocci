//# pattern-2, witnesses: 3
@@
identifier priv;
@@
 void nfcmrvl_chip_reset(struct nfcmrvl_private * priv)
 {
     <...
- priv->reset_n_io
+ priv->config.reset_n_io
     ...>
 }
//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (priv->hci_muxed) { S0 }
+ if (priv->config.hci_muxed) { S0 }
