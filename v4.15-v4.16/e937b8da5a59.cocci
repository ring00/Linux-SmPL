//# pattern-4, witnesses: 3
@@
identifier an;
identifier sc;
identifier sta;
@@
 void ath_tx_aggr_sleep(struct ieee80211_sta * sta, struct ath_softc * sc, struct ath_node * an)
 {
     <...
- struct ath_txq * txq = txq;
+ struct ieee80211_txq * queue = queue;
     ...>
 }
//# pattern-19, witnesses: 2
@@
expression E1;
expression V0;
@@
- if (an->airtime_deficit[V0] <= 0) {
- __ath_tx_queue_tid(sc, E1);
- }
//# pattern-22, witnesses: 2
@@
expression V0;
@@
- &V0->list;
//# pattern-25, witnesses: 2
@@
identifier ar;
identifier txq;
@@
 void ath10k_mac_txq_unref(struct ath10k * ar, struct ieee80211_txq * txq)
 {
     <...
- &ar->txqs_lock;
     ...>
 }
