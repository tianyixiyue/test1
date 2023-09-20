/// @description Insert description here
// You can write your code in this editor
/// obj_player 的 Step 事件

// 设置小人的移动速度
var moveSpeed = 5;

// 检查按键输入并移动小人
if (keyboard_check(vk_left)) {
    x -= moveSpeed;
} else if (keyboard_check(vk_right)) {
    x += moveSpeed;
}

if (keyboard_check(vk_up)) {
    y -= moveSpeed;
} else if (keyboard_check(vk_down)) {
    y += moveSpeed;
}

if (mouse_check_button_pressed(mb_left)) {
    // 获取鼠标点击的位置
    var targetX = mouse_x;
    var targetY = mouse_y;
    
    // 计算小人需要移动的方向和距离
	var _direction=point_direction(x,y,targetX,targetY);
    var distance = point_distance(x, y, targetX, targetY);
    
    // 移动小人
	while(distance>=0){
    if (distance > moveSpeed) {
        x += lengthdir_x(moveSpeed, _direction);
        y += lengthdir_y(moveSpeed, _direction);
    } else {
        x = targetX;
        y = targetY;
    }
	distance-=moveSpeed;
	}
}

