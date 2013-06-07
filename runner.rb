require_relative "database"
require_relative "contact"

class CrmRunner 


	def self.run 
		@db = Database.new
		contact = Contact.new(2, 'Zee', 'Mir', 'something', 'abc')
puts "WHAT IS GOING ON"
		while true	
			puts "Please choose whether you would like to 'add', 'modify', 'display all', 'display contact', 'display attribute', 'delete', 'exit'" 
			prompt_1 = gets.chomp

			case prompt_1
			when "add" 

				print "What is your ID?"
				new_id = gets.chomp
				#@db.new_contacts << new_id

				print "What is your first name?"
				new_firstname = gets.chomp
			   
				print "What is your last name?"
				new_lastname = gets.chomp
				# @db.new_contacts << new_lastname
				
				print "What is your email?"
				new_email = gets.chomp
				#@db.new_contacts << new_email

				print "Add notes?"
				new_notes = gets.chomp
				# @db.new_contacts << new_notes	
				#puts @db.new_contacts.inspect
				@db.add(Contact.new(new_id, new_firstname, new_lastname, new_email, new_notes))
			
			when "modify" 
					puts "What would you like to change?"
					search_q = gets.chomp
					puts "Are you sure you want to change #{search_q}?"
					search_q1 = gets.chomp 

					if "yes"
					 	puts "What would you like to change to?"
					    modified = gets.chomp
					    else 
                      
                    end
                  

				#@db.modify_prompt(contact)
			when "display all"
				puts @db.new_contacts
			
			when "display contact"
	
              print "Please provide firstname or lastname"
			  search_query = gets.chomp
              puts @db.find_contact(search_query).inspect
				#@db.display_particular_contact (contact)

			when "display attribute"
				puts "How would you like to search for the contact?"
				user_input1 = gets.chomp 

				@db.display_info_by_attribute(user_input1)
			when "delete"
				@db.delete_contact(contact)
			when "exit"
				break 
			end
			
		end
	end
end

CrmRunner.run
