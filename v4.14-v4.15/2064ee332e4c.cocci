//# pattern-1, witnesses: 38
@@
expression E0;
@@
- BT_ERR(, E0->name)
+ bt_dev_err(E0, )
//# pattern-3, witnesses: 22
@@
@@
- BT_ERR()
+ bt_dev_err(hdev)
//# pattern-9, witnesses: 20
@@
expression E0;
@@
- BT_INFO(, E0->name)
+ bt_dev_info(E0, )
//# pattern-4, witnesses: 13
@@
expression E0;
@@
- BT_ERR(, hdev->name, E0)
+ bt_dev_err(hdev, , E0)
//# pattern-2, witnesses: 9
@@
@@
- BT_INFO()
+ bt_dev_info(hdev)
//# pattern-8, witnesses: 7
@@
@@
- BT_INFO(, hdev->name)
+ bt_dev_info(hdev, )
//# pattern-10, witnesses: 3
@@
@@
- BT_INFO(, hdev->name, , subver & 57344 >> 13, subver & 7936 >> 8, subver & 255)
+ bt_dev_info(hdev, , , subver & 57344 >> 13, subver & 7936 >> 8, subver & 255)
//# pattern-16, witnesses: 3
@@
@@
- BT_ERR()
+ bt_dev_err(hdev, )
//# pattern-18, witnesses: 3
@@
expression E0;
@@
- BT_INFO(, hdev->name, E0)
+ bt_dev_info(hdev, , E0)
//# pattern-6, witnesses: 2
@@
identifier fn;
identifier hdev;
identifier info;
identifier ver;
@@
 int fn(struct hci_dev * hdev, struct qca_version * ver, const struct qca_device_info * info)
 {
     <...
- BT_ERR(, hdev->name, fwname)
+ bt_dev_err(hdev, , fwname)
     ...>
 }
//# pattern-12, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression E1;
expression E2;
identifier hdev;
identifier r0.fn;
@@
 int fn(struct hci_dev * hdev)
 {
     <...
- BT_INFO(, hdev->name, E0, E1, E2)
+ bt_dev_info(hdev, , E0, E1, E2)
     ...>
 }
//# pattern-17, witnesses: 2
@@
@@
- BT_ERR
+ bt_dev_err(hdev)
