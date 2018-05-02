//# pattern-1, witnesses: 3
@@
@@
- key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_MMIC || key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_IV || key->conf.flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE
+ key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_MMIC || key->conf.flags & IEEE80211_KEY_FLAG_RESERVE_TAILROOM
