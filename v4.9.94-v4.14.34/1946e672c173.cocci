//# pattern-2, witnesses: 4
@@
expression E0;
@@
- tcp_death_row.sysctl_tw_recycle && E0
+ tcp_death_row->sysctl_tw_recycle && E0
//# pattern-1, witnesses: 2
@@
expression IL0;
@@
- inet_twsk_purge(&tcp_hashinfo, &tcp_death_row, IL0)
+ inet_twsk_purge(&tcp_hashinfo, IL0)
