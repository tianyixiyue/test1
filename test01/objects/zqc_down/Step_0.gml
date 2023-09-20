/// @description Insert description here
// You can write your code in this editor
/// obj_player 的 Step 事件

// 设置小人的移动速度
var moveSpeed = 3.5;

// 检查按键输入并移动小人
if (keyboard_check(vk_left)) {
    x -= moveSpeed;
    instance_change(zqc_left, true); // 切换为向左行走的人物对象
} else if (keyboard_check(vk_right)) {
    x += moveSpeed;
    instance_change(zqc_right, true); // 切换为向右行走的人物对象
} else if (keyboard_check(vk_up)) {
    y -= moveSpeed;
    instance_change(zqc_up, true); // 切换为向上行走的人物对象
} else if (keyboard_check(vk_down)) {
    y += moveSpeed;
    instance_change(zqc_down, true); // 切换为向下行走的人物对象
}










