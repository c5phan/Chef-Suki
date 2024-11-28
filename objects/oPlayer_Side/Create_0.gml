xSpeed = 0;
ySpeed = 0;
zSpeed = 0;

//Jumping
moveSpeed = 2;
jumpSpeed = -10
gameGravity = 0.25;

yHeight = -sprite_height / 2;
yFloor = y;
tempFloor = y;

// left
look_left = false;

// walk
walkTimer = 30;
walking = 0;

#region CLAMPED CAMERA VARIABLES

min_view_x = 0;
min_view_y = 0;
max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);

#endregion