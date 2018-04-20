//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
@@
- m->cp_hqd_pq_doorbell_control = E0 | E1;
- m->cp_hqd_active = 0;
+ m->cp_hqd_pq_doorbell_control = E1;
//# pattern-14, witnesses: 2
@@
identifier mm;
identifier mqd;
identifier pipe_id;
identifier queue_id;
identifier timeout;
identifier type;
typedef uint32_t;
@@
 int destroy_mqd(struct mqd_manager * mm, void * mqd, enum kfd_preempt_type type, unsigned int timeout, uint32_t pipe_id, uint32_t queue_id)
 {
     <...
- mm->dev->kfd2kgd->hqd_destroy(mm->dev->kgd, type, timeout, pipe_id, queue_id)
+ mm->dev->kfd2kgd->hqd_destroy(mm->dev->kgd, mqd, type, timeout, pipe_id, queue_id)
     ...>
 }
//# pattern-15, witnesses: 2
@@
@@
- m->cp_hqd_active = 1;
