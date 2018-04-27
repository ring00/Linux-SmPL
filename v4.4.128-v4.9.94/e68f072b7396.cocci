//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct hci_mgmt_handler i = {
    .func = fn,
};
@@
expression IL0;
identifier data;
identifier hdev;
identifier len;
identifier r0.fn;
identifier sk;
typedef u16;
@@
 int fn(struct sock * sk, struct hci_dev * hdev, void * data, u16 len)
 {
     <...
- struct hci_request req = req;
- if (!trigger_discovery(&req, &status)) {
- err = mgmt_cmd_complete(sk, hdev->id, IL0, status, &cp->type, sizeof(unsigned long));
- mgmt_pending_remove(cmd);
- }
- err = hci_req_run(&req, start_discovery_complete);
- if (err < 0) {
- mgmt_pending_remove(cmd);
- }
+ err = 0;
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct hci_mgmt_handler i = {
    .func = fn,
};
@@
identifier data;
identifier hdev;
identifier len;
identifier r1.fn;
identifier sk;
typedef u16;
@@
 int fn(struct sock * sk, struct hci_dev * hdev, void * data, u16 len)
 {
     <...
- struct hci_request req = req;
- hci_req_init(&req, hdev);
+ queue_work(hdev->req_workqueue, &hdev->discov_update);
     ...>
 }
