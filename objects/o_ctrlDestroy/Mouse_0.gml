// user decided to hit back on pop up, so need to destroy popup
instance_destroy(pop);
caller.created = 0;

instance_destroy(); // destroys itself
