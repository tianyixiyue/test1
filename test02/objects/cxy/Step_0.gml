/// @description Insert description here
// You can write your code in this editor
/// obj_player 的 Step 事件

// 设置小人的移动速度
var moveSpeed = 3;

// 检查按键输入并移动小人
if (keyboard_check(vk_left) && !place_meeting(x-moveSpeed, y, obj_block1)) {
	audio_play_sound(footsteps, 1, false);
    instance_change(cxy_left, true); // 切换为向左行走的人物对象
	x -= moveSpeed;
} else if (keyboard_check(vk_right) && !place_meeting(x+moveSpeed, y, obj_block1)) {
	audio_play_sound(footsteps, 1, false);
    instance_change(cxy_right, true); // 切换为向右行走的人物对象
	x += moveSpeed;
} else if (keyboard_check(vk_up) && !place_meeting(x, y-moveSpeed, obj_block1)) {
	audio_play_sound(footsteps, 1, false);
    instance_change(cxy_up, true); // 切换为向上行走的人物对象
	y -= moveSpeed;
} else if (keyboard_check(vk_down) && !place_meeting(x, y+moveSpeed, obj_block1)) {
	audio_play_sound(footsteps, 1, false);
    instance_change(cxy_down, true); // 切换为向下行走的人物对象
	y += moveSpeed;
}
// 当没有按下任何按键时
if (!keyboard_check(vk_up) && !keyboard_check(vk_down) && !keyboard_check(vk_left) && !keyboard_check(vk_right)) {
    audio_stop_all();
	instance_change(cxy, true);
}




















