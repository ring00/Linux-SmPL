//# pattern-2, witnesses: 2
@@
@@
- rpmsg_send(rpdev, MSG, strlen(MSG))
+ rpmsg_send(rpdev->ept, MSG, strlen(MSG))
//# pattern-3, witnesses: 2
@@
@@
- rpmsg_sendto(rpdev, &nsm, sizeof(unsigned long), RPMSG_NS_ADDR)
+ rpmsg_sendto(rpdev->ept, &nsm, sizeof(unsigned long), RPMSG_NS_ADDR)
