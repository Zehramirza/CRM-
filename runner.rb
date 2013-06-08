require_relative "database"
#require_relative "contact"

class CrmRunner 


	def self.run 
		@db = Database.new
		
        id = 1000
		while true	

			puts "Please pick from the following" 
			puts 
			puts "---Type 'add' to add a new contact"
			puts "---Type 'modify' to modify an existing contact"
			puts "---Type 'display all' to show all the stored contacts "
			puts "---Type 'display contact' to show a particular contact"
			puts "---Type 'display attribute' to show contact from an attribute "
			puts "---Type 'delete' to delete a contact"
			puts "---Type 'exit' to leave the program"
			puts "==============================================================="

			input = gets.chomp
				
			case input
			when "add" 
				
				id += 1

				puts "What is your first name?"
				firstname = gets.chomp
			   
				puts "What is your last name?"
				lastname = gets.chomp
				
				puts "What is your email?"
				email = gets.chomp
				
				puts "Please add any relevant notes?"
				notes = gets.chomp
				
				@db.add(id, firstname, lastname, email, notes)
				puts "\e[H\e[2J"  #clears the screen
 				puts "================================================"
 				puts "Contact successfully added!"
 				puts "================================================"
 				puts

			
			when "modify" 
					
				puts "Please enter ID, First Name, Last Name or email of the contact"
				mod1 = gets.chomp 
                puts "Are you sure you want to make changes to the following contact?"
                @db.display_particular_contact(mod1)
                yesorno = gets.chomp

                if yesorno == "yes"
                	puts "Please pick one of the following:"
                	puts "id        --> Changes ID of the contact"
                	puts "firstname --> Changes First Name of the contact" 
                	puts "lastname  --> Changes the Last Name of the contact"
                	puts "email     --> Changes the email of the contact"
                	puts 
                	puts "==================================================="

                	mod2 = gets.chomp
                	puts "Please provide the new information for #{mod2}"
                	mod3 = gets.chomp 
                	@db.modify_contact(mod1, mod2, mod3)

                	puts "\e[H\e[2J"  #clears the screen
 					puts "================================================"
 					puts "Contact successfully modified!"
 					puts "================================================"
 					puts
 				end 	

			when "display all"
				puts @db.display_all_contacts
			
			when "display contact"

				puts "\e[H\e[2J" 
				puts "Enter the id, first name, last name or email to be displayed (E.g John)"
                search_query = gets.chomp
                @db.display_particular_contact(search_query)

			when "display attribute"
				puts "Please select from the following options:"
				puts
				puts "Type 'id' for a list of all IDs"
				puts "Type 'firstname' for a list of all First Names"
				puts "Type 'lastname' for a list of all Last Names"
				puts "Type 'email' for a list of all Emails"
				puts 
				puts '---------------------------------------------'

				search_query2 = gets.chomp

				puts "\e[H\e[2J"  #clears the screen
 				puts "================================================"
 				puts "Contact successfully loaded!"
 				puts "================================================"
 				puts
 				puts "Contacts listed by #{search_query2}"
 				puts
 				puts "------------------------------------------------"
 				@db.display_info_by_attribute(search_query2) 

				

			when "delete"
				puts " Enter the ID, First Name, Last Name or Email to delete contact"
				del_attr = gets.chomp
				puts "Are you sure you would like to delete the following contact?"
				@db.display_particular_contact(del_attr)
				del_conf = gets.chomp

				if del_conf == "yes"
					if @db.delete_contact(del_attr)
						puts "User has successfully been deleted"
					else 
						puts "Contact cannot be found"
					end	
				end		

			when "exit"
				break 
			end
			
		end
	end
end

CrmRunner.run
