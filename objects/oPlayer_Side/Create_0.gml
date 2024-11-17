xSpeed = 0;
ySpeed = 0;
zSpeed = 0;

// y
y = 625;

//Jumping
moveSpeed = 2;
jumpSpeed = -3.5;
gameGravity = 0.25;

// Z-axis
z = 0;
zHeight = -sprite_height / 2;
zFloor = 0;

// left
look_left = false;

#region CLAMPED CAMERA VARIABLES

min_view_x = 0;
min_view_y = 0;
max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);

#endregion