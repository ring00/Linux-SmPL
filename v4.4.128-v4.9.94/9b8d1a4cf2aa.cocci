//# pattern-4, witnesses: 2
@@
expression E0;
@@
- ndev->cur_id = E0
+ ndev->cur_params.id = E0
//# pattern-7, witnesses: 2
@@
identifier ndev;
@@
 int st_nci_hci_network_init(struct nci_dev * ndev)
 {
     <...
- ndev->hci_dev->conn_info
+ ndev->hci_dev->conn_info->dest_params
     ...>
 }
