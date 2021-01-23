class ContactsController < ApplicationController

	def new
    @contact = Contact.new
  end

  def index
  end

  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        ContactMailer.new_contact_email(@contact).deliver
        format.html { redirect_to new_contact_path, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone, :email, :message)
  end

end
