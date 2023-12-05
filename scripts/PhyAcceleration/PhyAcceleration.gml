/// @desc
function PhyAcceleration() constructor{
	_spd = 0;
	_spd_max = 0;
	_acc = 0;
	_acc_acc = 0;
	
	static acc = function(){
		var _s = _spd + _acc * _acc_acc;
		_spd = min(_spd_max, _s);
		
		return _spd;
	}
}