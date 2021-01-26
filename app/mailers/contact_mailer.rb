class ContactMailer < ApplicationMailer
  
  def new_contact_email(contact)
    @contact = contact
    mail(to: 'info@ajackus.com',
        subject: t(:new_inquery_email))
  end

end

