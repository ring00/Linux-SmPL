//# pattern-1, witnesses: 9
@@
identifier fn;
identifier hdev;
identifier skb;
@@
 int fn(struct hci_dev * hdev, struct sk_buff * skb)
 {
     <...
- if (!test_bit(HCI_RUNNING, &hdev->flags)) {
- }
     ...>
 }
