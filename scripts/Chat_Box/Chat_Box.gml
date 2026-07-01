/// string_wrap(string, width)
function string_wrap(_str, _width) {
    var _pos_space = -1;
    var _pos_current = 1;
    var _text_current = _str;
    var _text_output = "";
    
    while (string_length(_text_current) >= _pos_current) {
        if (string_width(string_copy(_text_current, 1, _pos_current)) > _width) {
            if (_pos_space != -1) {
                _text_output += string_copy(_text_current, 1, _pos_space) + "#";
                _text_current = string_copy(_text_current, _pos_space + 1, string_length(_text_current) - _pos_space);
                _pos_current = 1;
                _pos_space = -1;
            } else {
                // Force break if word is too long
                _text_output += string_copy(_text_current, 1, _pos_current - 1) + "#";
                _text_current = string_copy(_text_current, _pos_current, string_length(_text_current) - _pos_current + 1);
                _pos_current = 1;
                _pos_space = -1;
            }
        }
        
        if (string_char_at(_text_current, _pos_current) == " ") {
            _pos_space = _pos_current;
        }
        _pos_current++;
    }
    
    if (string_length(_text_current) > 0) {
        _text_output += _text_current;
    }
    
    return _text_output;
}