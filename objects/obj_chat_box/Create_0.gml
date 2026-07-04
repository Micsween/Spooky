// Dialogue lines (you can load these from a data structure later)

// Create Event of chat_box

// Default / fallback values
text = [];
name = [];           // if you're using speaker names
current_line = 0;
char_count = 0;
text_speed = 0.5;
max_width = 261 * 5;
text_x = 45;
text_y = 560;
current_text = "";

// Only set defaults if no text was passed in
if (array_length(text) <= 0) {
    text[0] = "Error: No dialogue was set!";
    current_text = text[0];
} else {
    current_text = text[0];
}



//// Settings
//current_line = 0;
//line_count = array_length(text) - 1;           // array length - 1
//max_width = 261 * 5;          // pixel width of your text box
//text_x = 45;          // offset inside box
//text_y = 560;

//// Typewriter variables
//char_count = 0;
//text_speed = 0.5;         // characters per step (lower = slower)
//current_text = string_wrap(text[0], max_width);  // Pre-wrap the first line

//current_line = 0;
//text[0] = "This is a second line of dialogue that will also wrap nicely if it gets too long. Lets hope this message doesn't have a hashtag in the middle of it (: #pls psl pls";

//max_width = 620;           // Make this a bit smaller than your box width
//text_x = 40;               // Adjust these
//text_y = 20;

//char_count = 0;
//text_speed = 0.8;

//// IMPORTANT: Wrap ONLY once when changing lines
//current_text = string_wrap(text[current_line], max_width);