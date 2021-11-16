note
	description: "Summary description for {BARBER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BARBER

create
	make

feature {NONE} -- Initialization

	make (a_time: INTEGER)
			-- Initialize with `a_time' as haircut time
		require
			valid_time: a_time >= 0
		do
			haircut_time := a_time
		end

feature {CUSTOMER} -- Basic operations

	cut_hair (a_customer: separate CUSTOMER)
			-- Cut `a_customer's hair
		do
			print ("Barber: Start cutting hair of customer " + a_customer.id.out + "%N")
			(create {EXECUTION_ENVIRONMENT}).sleep (haircut_time * 1000000)
			print ("Barber: Finished cutting hair of customer " + a_customer.id.out + "%N")
		end

feature {NONE} -- Implementation

	haircut_time: INTEGER

invariant
	valid_haircut_time: haircut_time >= 0

end
