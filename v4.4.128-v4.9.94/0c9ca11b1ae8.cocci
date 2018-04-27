//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (!rdev->wiphy.features & NL80211_FEATURE_DS_PARAM_SET_IE_IN_PROBES || !rdev->wiphy.features & NL80211_FEATURE_QUIET) { S0 }
+ if (!rdev->wiphy.features & NL80211_FEATURE_DS_PARAM_SET_IE_IN_PROBES && rdev->wiphy.features & NL80211_FEATURE_QUIET && !wiphy_ext_feature_isset(&rdev->wiphy, NL80211_EXT_FEATURE_RRM)) { S0 }
