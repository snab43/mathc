///character_show_dialog(character, focus, emotion, dialog_array)
var character = argument0;
var focus = argument1;
var emotion = argument2;
var dialog_array = argument3;

// Make sure character exists
if (!instance_exists(character)) {
    action++;
    exit;
}

// Change the view target
if (instance_exists(o_view) and focus) {
    o_view.target[? "x"] = character.x;
    o_view.target[? "y"] = character.y;
}

// Create the dialog
if (!instance_exists(o_dialog)) {
    var dialog = instance_create(0, 0, o_dialog);
    dialog.cutscene = id;
    dialog.text = dialog_array;
    dialog.portrait = character.portrait;
    dialog.emotion = emotion;
    dialog.sound = character.sound;
    with (dialog) event_user(FORMAT_TEXT);
}
