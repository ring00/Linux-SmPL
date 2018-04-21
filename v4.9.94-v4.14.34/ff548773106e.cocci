//# pattern-2, witnesses: 2
@@
expression ME0;
@@
- htonl(ME0)
+ htonl(ntohs)
//# pattern-4, witnesses: 2
@@
expression E0;
expression IL1;
@@
- E0 = ntohl(b[IL1])
+ E0 = htons(ntohl)
