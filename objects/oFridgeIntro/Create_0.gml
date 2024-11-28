xpos = 640; // x position of camera
a = 1; // transparency of black rectangle over screen (for fading)
fadeout = 0; // bool for fade

str = ""; // current line of text for story
print = ""; // draws one character at a time of str

pos = 0 ; // whcih index of str we're up to
next = 0; // the index of the new line 

holdspace = 0; // used for skipping (based on number of frames held)

story[0] = "Help Suki collect the listed ingredients";
story[1] = "Collect the items using e";
story[2] = "Drop the selected item in your inventory using q";
story[3] = "Use arrow keys or scroll to go through your inventory";
story[4] = "Hold shift to run";
story[5] = "Use space to jump onto ingredients";
story[6] = "Follow the arrows to navigate through the fridge"; 

