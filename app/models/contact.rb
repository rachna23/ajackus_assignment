class Contact < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email , :message
  validates_email_format_of :email
  validates :phone, :presence => true,
                    :numericality => true,
                    :length => { :minimum => 10,
                    	           :maximum => 15 }
end