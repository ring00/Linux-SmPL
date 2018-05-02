//# pattern-12, witnesses: 4
@@
expression E0;
expression E1;
@@
- acpi_evaluate_dsm(ACPI_HANDLE(E0->dev), hns_dsaf_acpi_dsm_uuid, 0, E1, &argv4)
+ acpi_evaluate_dsm(ACPI_HANDLE(E0->dev), &hns_dsaf_acpi_dsm_guid, 0, E1, &argv4)
//# pattern-17, witnesses: 4
@@
expression E0;
expression E3;
expression E4;
expression IL2;
expression IL5;
expression V1;
@@
- acpi_evaluate_dsm_typed(E0, V1, IL2, E3, E4, IL5)
+ acpi_evaluate_dsm_typed(E0, &V1, IL2, E3, E4, IL5)
//# pattern-9, witnesses: 3
@@
expression E0;
expression IL1;
expression IL2;
@@
- acpi_evaluate_dsm(E0, pci_acpi_dsm_uuid, IL1, IL2, NULL)
+ acpi_evaluate_dsm(E0, &pci_acpi_dsm_guid, IL1, IL2, NULL)
//# pattern-1, witnesses: 2
@@
@@
- guid.b
+ &guid
//# pattern-6, witnesses: 2
@@
expression E0;
expression IL1;
@@
- acpi_check_dsm(E0, tpm_ppi_uuid, TPM_PPI_REVISION_ID, 1 << IL1)
+ acpi_check_dsm(E0, &tpm_ppi_guid, TPM_PPI_REVISION_ID, 1 << IL1)
//# pattern-7, witnesses: 2
@@
expression IL1;
expression IL2;
expression V0;
@@
- acpi_check_dsm(dhandle, V0, IL1, 1 << IL2)
+ acpi_check_dsm(dhandle, &V0, IL1, 1 << IL2)
