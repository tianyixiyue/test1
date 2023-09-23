/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_left)) {
    // 在这里添加你的代码
    if (room != room_last) {
        room_goto_next();
    } else {
        // 如果已经是最后一个房间，可以选择切换到其他房间或执行其他操作
        room_goto(rm_room001); // 切换到起始房间
    }
}






