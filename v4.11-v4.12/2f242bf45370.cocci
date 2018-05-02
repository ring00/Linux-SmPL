//# pattern-1, witnesses: 2
@@
identifier PV0;
@@
- PV0->enc_flags |= ;
+ PV0->bw = ;
//# pattern-3, witnesses: 2
@@
@@
- if (rate_n_flags & RATE_MCS_HT40_MSK) {
- rx_status.enc_flags |= RX_ENC_FLAG_40MHZ;
- }
+ if (rate_n_flags & RATE_MCS_HT40_MSK) {
+ rx_status.bw = RATE_INFO_BW_40;
+ }
