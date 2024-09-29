package haxemouse;

/*
 @author toperri
 @description This class is used to move the cursor and trigger mouse events
*/
@:cppFileCode('#include <windows.h>')
class Cursor {
    // Use these for more advanced shit
    @:functionCode('SetCursorPos(x, y);')
    public static function moveCursor(x:Int, y:Int) {}

    @:functionCode('mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);')
    public static function triggerMouseClick() {}

    @:functionCode('mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);')
    public static function releaseMouseClick() {}

    public static function click(x:Int, y:Int) {
        moveCursor(x, y);
        triggerMouseClick();
        releaseMouseClick();
    }
}