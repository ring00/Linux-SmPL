//# pattern-9, witnesses: 4
@@
identifier PV0;
@@
- PV0->enc_flags |= RX_ENC_FLAG_40MHZ
+ PV0->bw = RATE_INFO_BW_40
//# pattern-24, witnesses: 3
@@
@@
- rx_status.enc_flags |= RX_ENC_FLAG_HT;
+ rx_status.encoding = RX_ENC_HT;
//# pattern-21, witnesses: 2
@@
@@
- rx_status->enc_flags |= RX_ENC_FLAG_HT;
- rx_status->enc_flags |= stbc << RX_ENC_FLAG_STBC_SHIFT;
+ rx_status->encoding = RX_ENC_HT;
+ rx_status->enc_flags |= stbc << RX_ENC_FLAG_STBC_SHIFT;
//# pattern-26, witnesses: 2
@@
@@
- rx_status->enc_flags |= RX_ENC_FLAG_VHT;
- rx_status->enc_flags |= stbc << RX_ENC_FLAG_STBC_SHIFT;
+ rx_status->encoding = RX_ENC_VHT;
+ rx_status->enc_flags |= stbc << RX_ENC_FLAG_STBC_SHIFT;
//# pattern-27, witnesses: 2
@@
@@
- rxs->enc_flags & RX_ENC_FLAG_40MHZ
+ rxs->bw == RATE_INFO_BW_40
