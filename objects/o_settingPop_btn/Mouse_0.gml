var _e = instance_create_layer(752,272,"Setting_Popup",o_sndEffects);
var _m = instance_create_layer(752,360,"Setting_Popup",o_sndMusic);
var _q = instance_create_layer(656,448,"Setting_Popup",o_quit);
_q.image_xscale = 3.75;
_q.image_yscale = 1.5;
var _d = instance_create_layer(384, 448, "Setting_Popup",o_popDestroy);
_d.image_xscale = 3.75;
_d.image_yscale = 1.5;
var _pop = instance_create_layer(0,0,"Setting_Popup",o_settingPop);

_d.pop = _pop;
_d.e = _e;
_d.m = _m;
_d.q = _q;