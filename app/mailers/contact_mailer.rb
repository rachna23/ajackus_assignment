class ContactMailer < ApplicationMailer
	def new_contact_email(contact)
		@contact = contact
    mail(to: 'jyotirachna2302@gmail.com', subject: "You got a new message!")
  end
end
