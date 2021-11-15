note
	description: "first-project application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION
inherit
	ARGUMENTS_32
create
	make
feature {NONE} -- Initialization

	make
			-- Run application.
		local
			car1: CAR
			car2: CAR
		do
			create car1.make(5)
			print ("car1 has " + car1.cur_gear.out + " gear at start%N")
			create car2.make(6)
			print ("car2 has " + car2.cur_gear.out + " gear at start%N")
			car2.shift_gear(car2)
			print ("car2 has " + car2.cur_gear.out + " gear now%N")
		end
end
