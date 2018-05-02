//# pattern-2, witnesses: 7
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- cfg80211_get_bss(E0, E1, E2, E3, E4, WLAN_CAPABILITY_ESS, WLAN_CAPABILITY_ESS)
+ cfg80211_get_bss(E0, E1, E2, E3, E4, IEEE80211_BSS_TYPE_ESS, IEEE80211_PRIVACY_ANY)
//# pattern-6, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- cfg80211_get_bss(E0, E1, E2, E3, E4, WLAN_CAPABILITY_IBSS, WLAN_CAPABILITY_IBSS)
+ cfg80211_get_bss(E0, E1, E2, E3, E4, IEEE80211_BSS_TYPE_IBSS, IEEE80211_PRIVACY_ANY)
//# pattern-3, witnesses: 2
@@
expression E2;
expression ME1;
identifier PV0;
@@
- cfg80211_get_bss(PV0->hw->wiphy, ME1, E2, NULL, 0, 0, 0)
+ cfg80211_get_bss(PV0->hw->wiphy, ME1, E2, NULL, 0, IEEE80211_BSS_TYPE_ANY, IEEE80211_PRIVACY_ANY)
//# pattern-9, witnesses: 2
@@
@@
+ int bss_type = bss_type;
+ if (channel->band == IEEE80211_BAND_60GHZ) {
+ bss_type = res->pub.capability & WLAN_CAPABILITY_DMG_TYPE_MASK;
+ if (bss_type == WLAN_CAPABILITY_DMG_TYPE_AP || bss_type == WLAN_CAPABILITY_DMG_TYPE_PBSS) {
+ regulatory_hint_found_beacon(wiphy, channel, gfp);
+ }
+ }
//# pattern-10, witnesses: 2
@@
expression E0;
@@
- u16 capability = capability;
- if (!is_zero_ether_addr(ifibss->bssid)) {
- capability = WLAN_CAPABILITY_IBSS;
- if (ifibss->privacy) {
- capability |= WLAN_CAPABILITY_PRIVACY;
- }
- cbss = cfg80211_get_bss(E0->hw.wiphy, ifibss->chandef.chan, ifibss->bssid, ifibss->ssid, ifibss->ssid_len, WLAN_CAPABILITY_IBSS | WLAN_CAPABILITY_PRIVACY, capability);
- }
+ if (!is_zero_ether_addr(ifibss->bssid)) {
+ cbss = cfg80211_get_bss(E0->hw.wiphy, ifibss->chandef.chan, ifibss->bssid, ifibss->ssid, ifibss->ssid_len, IEEE80211_BSS_TYPE_IBSS, IEEE80211_PRIVACY(ifibss->privacy));
+ }
