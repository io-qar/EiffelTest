note
	description: "Summary description for {CAR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CAR
create
	make
feature --init
	make (gear_num: INTEGER) -- constructor
		require -- pre-condition
			valid_gear: gear_num >= 3
		do
			valid_gear := gear_num
			cur_gear := 0
		end

feature --public
	cur_gear: INTEGER
	valid_gear: INTEGER

	shift_gear (car: CAR)
		require
			valid_shift: car.cur_gear < car.valid_gear
		do
			cur_gear := car.cur_gear + 1
		end

	downshift_gear (car: CAR)
		require
			valid_downshift: car.cur_gear > -1
		do
			cur_gear := car.cur_gear - 1
		end
end
