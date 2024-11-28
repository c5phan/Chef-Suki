xpos = 640; // x position of camera
a = 1; // transparency of black rectangle over screen (for fading)
fadeout = 0; // bool for fade

str = ""; // current line of text for story
print = ""; // draws one character at a time of str

pos = 0 ; // whcih index of str we're up to
next = 0; // the index of the new line 

holdspace = 0; // used for skipping (based on number of frames held)

story[0] = "Pour the mix into the container";
story[1] = "Click or Hold on the bowl to pour";
story[2] = "Pour till the container is full";
story[3] = "Finish before the time runs out!";

