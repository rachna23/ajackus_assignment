#Contact controller
class ContactsController < ApplicationController
  respond_to :html

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = t('controllers.contacts.create.flash.notice')
      send_email
    end 
    respond_with(@contact, location: new_contact_path)
  end

  def send_email
    ContactMailer.new_contact_email(@contact).deliver
  end 

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone, :email, :message)
  end

end
