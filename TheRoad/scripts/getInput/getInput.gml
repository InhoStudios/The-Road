// declare keyboard check variable
globalvar keyLeft, keyRight, keyUp, keyDown, keyInteract, mbLeftPress;

// set keyboard inputs
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyInteract = keyboard_check_pressed(ord("E"));
mbLeftPress = mouse_check_button_pressed(mb_left);