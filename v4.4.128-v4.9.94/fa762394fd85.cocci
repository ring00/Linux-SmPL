//# pattern-1, witnesses: 6
@@
expression E0;
@@
- E0->id
+ media_entity_id(E0)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0 << entity->subdev.entity.id
+ E0 << media_entity_id(&entity->subdev.entity)
