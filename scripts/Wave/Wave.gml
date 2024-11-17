// Wave(from, to, duration, offset)

function Wave(_from, _to, _duration, _offset) {
	var a4 = (_to - _from) * 0.5;
	return _from + a4 + sin((((current_time * 0.001) + _duration * _offset) / _duration) * (pi*2)) * a4;
}