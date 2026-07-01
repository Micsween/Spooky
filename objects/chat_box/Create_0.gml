// Dialogue lines (you can load these from a data structure later)
text[0] = "Hello adventurer! Welcome to the world of Eldoria.";
text[1] = "This is a second line of dialogue that will also wrap nicely if it gets too long.";

// Settings
current_line = 0;
line_count = array_length(text) - 1;           // array length - 1
max_width = 261 * 5;          // pixel width of your text box
text_x = x + 20;          // offset inside box
text_y = y + 20;

// Typewriter variables
char_count = 0;
text_speed = 0.5;         // characters per step (lower = slower)
current_text = string_wrap(text[0], max_width);  // Pre-wrap the first line