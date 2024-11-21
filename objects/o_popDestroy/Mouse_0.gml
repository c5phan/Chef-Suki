// user decided to hit back on pop up, so need to destroy popup

instance_destroy(q);
instance_destroy(e);
instance_destroy(m);
instance_destroy(pop);
caller.created = 0;
instance_destroy(); // destroys itself
