require_relative "contact" 

class Database 
	 
	attr_accessor :new_contacts 

	def initialize 
		@new_contacts = []
	end

	def add(contact) #done 
       new_contacts << contact


	end 

	def modify_contact(contact)
		
		@new_contacts.each do |contact|
			if contact.id== search
			 contact.id = modified 
			elsif contact.firstname == search
			return contact
		    elsif contact.lastname == search
		    return contact
		    elsif contact.email == search
			return contact
		    elsif contact.notes == search
			return contact


		end
	end
 	
	end 

	def display_all_contacts #done 
		new_contacts.each {|contact| contact.contact_display }
	end 

	def display_particular_contact 
	end
	
	def find_contact(search)
			@new_contacts.each do |contact|
			if contact.firstname == search
			return contact
		    elsif contact.lastname == search
		    return contact
		end
	end
	end
	

	def display_info_by_attribute(search)
		@new_contacts.each do |contact|
			if contact.id == search
			return contact
			elsif contact.firstname == search
			return contact
		    elsif contact.lastname == search
		    return contact
		    elsif contact.email == search
			return contact
		    elsif contact.notes == search
			return contact


		end
	


	end

	def delete_contact
	
	end 
end