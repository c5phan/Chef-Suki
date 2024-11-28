xpos = 640; // x position of camera
a = 1; // transparency of black rectangle over screen (for fading)
fadeout = 0; // bool for fade

str = ""; // current line of text for story
print = ""; // draws one character at a time of str

pos = 0 ; // whcih index of str we're up to
next = 0; // the index of the new line 

holdspace = 0; // used for skipping (based on number of frames held)

story[0] = "Put the ingredients in the pot";
story[1] = "Click and drag items on the board into the pot";
story[2] = "Click on the cap to begin pouring";
story[3] = "Finish before the time runs out!";

