xpos = 640; // x position of camera
a = 1; // transparency of black rectangle over screen (for fading)
fadeout = 0; // bool for fade

str = ""; // current line of text for story
print = ""; // draws one character at a time of str

pos = 0 ; // whcih index of str we're up to
next = 0; // the index of the new line 

holdspace = 0; // used for skipping (based on number of frames held)

story[0] = "Help Suki bake the quiche perfectly";
story[1] = "Click and drag the quiche to place it in and out the oven";
story[2] = "Click on the dial to adjust the temperature";
story[3] = "Follow the instructions that appear at the top";
story[4] = "Open the oven by clicking the oven handle";
story[5] = "Close the oven by clicking the oven door";
story[6] = "Careful not to undercook or burn the quiche!";
