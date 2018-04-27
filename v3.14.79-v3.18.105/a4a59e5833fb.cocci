//# pattern-1, witnesses: 2
@@
identifier fn;
identifier key;
@@
 void fn(struct ieee80211_key * key)
 {
     <...
- !key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_MMIC
+ !key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_MMIC || key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_IV || key->conf.flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE
     ...>
 }
