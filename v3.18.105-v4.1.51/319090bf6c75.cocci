//# pattern-3, witnesses: 9
@@
@@
- STATION_INFO_SIGNAL
+ BIT(NL80211_STA_INFO_SIGNAL)
//# pattern-16, witnesses: 8
@@
@@
- STATION_INFO_TX_BITRATE
+ BIT(NL80211_STA_INFO_TX_BITRATE)
//# pattern-7, witnesses: 4
@@
@@
- STATION_INFO_TX_PACKETS
+ BIT(NL80211_STA_INFO_TX_PACKETS)
//# pattern-17, witnesses: 4
@@
@@
- STATION_INFO_RX_PACKETS
+ BIT(NL80211_STA_INFO_RX_PACKETS)
//# pattern-2, witnesses: 3
@@
@@
- STATION_INFO_SIGNAL_AVG
+ BIT(NL80211_STA_INFO_SIGNAL_AVG)
//# pattern-10, witnesses: 3
@@
@@
- STATION_INFO_RX_BITRATE
+ BIT(NL80211_STA_INFO_RX_BITRATE)
//# pattern-11, witnesses: 3
@@
expression E0;
@@
- E0 |= STATION_INFO_BSS_PARAM
+ E0 |= BIT(NL80211_STA_INFO_BSS_PARAM)
//# pattern-6, witnesses: 2
@@
@@
- sinfo.filled |= STATION_INFO_ASSOC_REQ_IES;
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- E0 |= STATION_INFO_RX_BYTES64
+ E0 |= BIT(NL80211_STA_INFO_RX_BYTES64)
//# pattern-9, witnesses: 2
@@
@@
- STATION_INFO_TX_RETRIES
+ BIT(NL80211_STA_INFO_TX_RETRIES)
//# pattern-13, witnesses: 2
@@
@@
- STATION_INFO_TX_FAILED
+ BIT(NL80211_STA_INFO_TX_FAILED)
//# pattern-20, witnesses: 2
@@
@@
- sinfo.filled = STATION_INFO_ASSOC_REQ_IES;
//# pattern-21, witnesses: 2
@@
expression E0;
@@
- E0 |= STATION_INFO_TX_BYTES64
+ E0 |= BIT(NL80211_STA_INFO_TX_BYTES64)
//# pattern-24, witnesses: 2
@@
@@
- STATION_INFO_CHAIN_SIGNAL | STATION_INFO_CHAIN_SIGNAL_AVG
+ BIT(NL80211_STA_INFO_CHAIN_SIGNAL) | BIT(NL80211_STA_INFO_CHAIN_SIGNAL_AVG)
