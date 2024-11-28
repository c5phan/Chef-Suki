xpos = 640; // x position of camera
a = 1; // transparency of black rectangle over screen (for fading)
fadeout = 0; // bool for fade

str = ""; // current line of text for story
print = ""; // draws one character at a time of str

pos = 0 ; // whcih index of str we're up to
next = 0; // the index of the new line 

holdspace = 0; // used for skipping (based on number of frames held)

story[0] = "Help sprinkle cheese over the mac";
story[1] = "Click on the bowl";
story[2] = "Drag the piece of cheese to the blue targets";
story[3] = "Fill all the targets";
story[4] = "Hurry before the time runs out!";
