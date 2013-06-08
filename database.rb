require "pry"
require_relative "contact" 

class Database 
	 
	attr_accessor :new_contacts 

	def initialize 
		@new_contacts = []
	end

	def add(id,firstname, lastname, email, notes) #done 
       @new_contacts << Contact.new(id, firstname, lastname, email, notes)


	end 

	def modify_contact(actual_att, attribute, modification)
		c = @new_contacts.each do |contact|
			(contact.id == actual_att) || (contact.firstname == actual_att) || (contact.lastname == actual_att) || (contact.email == actual_att)
		    end
		  if c 
		  c.send(attribute + '=', modification) 

		  end
          
          puts c  
	end
 	
	

	def display_all_contacts #done 
		new_contacts.each {|contact| contact.contact_display }
	end 

	def display_particular_contact(attribute)
        @new_contacts.each do |contact|
        	if (contact.id == attribute) || (contact.firstname == attribute) || (contact.lastname == attribute) || (contact.email == attribute)
            contact.contact_display
        	end
        end

	end
	

	def display_info_by_attribute(arg)
		attr_array = []

		@new_contacts.each do |contact|
			attr_array << contact.send(arg)
		end

		puts attr_array 
	end
	

	def delete_contact(attri)
		@new_contacts.each do |contact|
			if (contact.id == attri) || (contact.firstname == attri) || (contact.lastname == attri) || (contact.email == attri)
				@new_contacts.delete(contact)
			end
		end    	
	
	end 


end	