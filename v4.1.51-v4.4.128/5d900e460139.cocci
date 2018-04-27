//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct hci_mgmt_handler i = {
    .func = fn,
};
@@
identifier data;
identifier data_len;
identifier hdev;
identifier r0.fn;
identifier sk;
typedef u16;
@@
 int fn(struct sock * sk, struct hci_dev * hdev, void * data, u16 data_len)
 {
     <...
- &hdev->adv_instance.timeout_exp
+ &hdev->adv_instance_expire
     ...>
 }
//# pattern-3, witnesses: 3
@r1@
identifier i, fn;
@@
struct hci_mgmt_handler i = {
    .func = fn,
};
@@
identifier data;
identifier data_len;
identifier hdev;
identifier r1.fn;
identifier sk;
typedef u16;
@@
 int fn(struct sock * sk, struct hci_dev * hdev, void * data, u16 data_len)
 {
     <...
- hdev->adv_instance.timeout
+ hdev->adv_instance_timeout
     ...>
 }
//# pattern-6, witnesses: 2
@@
statement S0;
identifier fn;
identifier hdev;
@@
 int fn(struct hci_dev * hdev)
 {
     <...
- if (hdev->adv_instance.timeout) { S0 }
+ if (hdev->adv_instance_timeout) { S0 }
     ...>
 }
