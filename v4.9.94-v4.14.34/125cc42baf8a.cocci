//# pattern-23, witnesses: 5
@r0@
identifier i, fn;
@@
struct pstore_info i = {
    .read = fn,
};
@@
expression E0;
expression E2;
expression EC3;
expression IL4;
expression ME1;
identifier buf;
identifier compressed;
identifier count;
identifier ecc_notice_size;
identifier id;
identifier psi;
identifier time;
identifier type;
@@
- ssize_t ramoops_pstore_read(u64 * id, enum pstore_type_id * type, int * count, struct timespec * time, char ** buf, bool * compressed, ssize_t * ecc_notice_size, struct pstore_info * psi)
+ ssize_t ramoops_pstore_read(struct pstore_record * record)
 {
     <...
- ramoops_get_next_prz(E0, &ME1, E2, id, type, EC3, IL4)
+ ramoops_get_next_prz(E0, &ME1, E2, &record->id, &record->type, EC3, IL4)
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct pstore_info i = {
    .read = fn,
};
@@
expression E0;
identifier r1.fn;
identifier record;
@@
 ssize_t fn(struct pstore_record * record)
 {
     <...
- time->tv_nsec = E0
+ record->time.tv_nsec = E0
     ...>
 }
//# pattern-24, witnesses: 2
@r2@
identifier i, fn;
@@
struct pstore_info i = {
    .read = fn,
};
@@
expression E0;
identifier record;
@@
 ssize_t erst_reader(struct pstore_record * record)
 {
     <...
- time->tv_sec = E0
+ record->time.tv_sec = E0
     ...>
 }
//# pattern-31, witnesses: 2
@r3@
identifier i, fn;
@@
struct pstore_info i = {
    .read = fn,
};
@@
identifier r3.fn;
identifier record;
@@
 ssize_t fn(struct pstore_record * record)
 {
     <...
- *buf == NULL
+ record->buf == NULL
     ...>
 }
//# pattern-32, witnesses: 2
@r4@
identifier i, fn;
@@
struct pstore_info i = {
    .read = fn,
};
@@
expression E0;
expression E1;
identifier r4.fn;
identifier record;
@@
 ssize_t fn(struct pstore_record * record)
 {
     <...
- memcpy(*buf, E0, E1)
+ memcpy(record->buf, E0, E1)
     ...>
 }
//# pattern-35, witnesses: 2
@r5@
identifier i, fn;
@@
struct pstore_info i = {
    .read = fn,
};
@@
identifier r5.fn;
identifier record;
@@
 ssize_t fn(struct pstore_record * record)
 {
     <...
- *compressed = false
+ record->compressed = false
     ...>
 }
//# pattern-41, witnesses: 2
@r6@
identifier i, fn;
@@
struct pstore_info i = {
    .read = fn,
};
@@
identifier record;
@@
 ssize_t erst_reader(struct pstore_record * record)
 {
     <...
- *type = PSTORE_TYPE_DMESG
+ record->type = PSTORE_TYPE_DMESG
     ...>
 }
