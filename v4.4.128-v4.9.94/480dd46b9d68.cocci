//# pattern-2, witnesses: 2
@@
identifier auto_seq;
identifier ba_policy;
typedef bool;
identifier buf_size;
identifier dialog_token;
identifier sta;
identifier start_seq_num;
identifier tid;
identifier timeout;
identifier tx;
typedef u16;
typedef u8;
@@
 void __ieee80211_start_rx_ba_session(struct sta_info * sta, u8 dialog_token, u16 timeout, u16 start_seq_num, u16 ba_policy, u16 tid, u16 buf_size, bool tx, bool auto_seq)
 {
     <...
- local->hw
+ sta->sta
     ...>
 }
