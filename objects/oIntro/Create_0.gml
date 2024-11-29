xpos = 640; // x position of camera
a = 1; // transparency of black rectangle over screen (for fading)
fadeout = 0; // bool for fade

str = ""; // current line of text for story
print = ""; // draws one character at a time of str

pos = 0 ; // whcih index of str we're up to
next = 0; // the index of the new line 

holdspace = 0; // used for skipping (based on number of frames held)

story[0] = "Suki and her parents have always lived in the giant's kitchen";
story[1] = "The giant often gave their cat, Choco, cheese as a treat";
story[2] = "Choco was a slow eater so Suki's parents often stole cheese crumbs";
story[3] = "However, Suki dreamed of more";
story[4] = "She wanted to be able to eat like the giant"; 
story[5] = "One day, she found the giant's cookbook"; 
story[6] = "She decided to attempt to follow it while the giant left for vacation"; 
story[7] = "The next day, she jumped into the fridge"; 
story[8] = "Suki began to search for the ingredients from the cookbook"; 
story[9] = "Suddenly, Choco woke up and began swatting at Suki"; 
story[10] = "Suki quickly left and returned home"; 
story[11] = "Her parents were extremely angry"; 
story[12] = "They told her to never do it again and that cheese was enough";
story[13] = "However, deep down Suki longed to set out\n and prove the value of her dream"; 

reset = 0;