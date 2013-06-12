class Contact 

	attr_accessor :id, :firstname, :lastname, :email, :notes 

	def method_name
		
	end

	def initialize(id, firstname, lastname, email, notes)
		@id = id.to_i 
		@firstname = firstname 
		@lastname  = lastname 
		@email     = email 
		@notes     = notes 
	end 

	def contact_display 
		puts "ID:         #{@id}"
		puts "First Name: #{@firstname}" 
		puts "Last Name:  #{@lastname}"
		puts "Email:      #{email}"
		puts "Notes:      #{notes}"
		puts 
		puts "---------------------------------------"
		puts 
	end 


end


# puts contact_array[0].firstname #=> "Zehra"