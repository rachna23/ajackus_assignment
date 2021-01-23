class CustomBuilder < ActionView::Helpers::FormBuilder
  
  def inputbox_field(method, options = {})
    text_field(method, options.merge(class: 'input100', id:'first-name', placeholder: 'First name'))
  end

  def inputbox_lfield(method, options = {})
    text_field(method, options.merge(class: 'input100', id:'last-name', placeholder: 'Last name'))
  end

  def email(method, options = {})
    text_field(method, options.merge(class: 'input100', id:'email', placeholder: 'Eg. example@email.com'))
  end

  def input_phone_field(method, options = {})
  	phone_field(method, options.merge(class: 'input100', id:'phone', placeholder: 'Eg. +1 800 000000'))
  end	

  def input_text_field(method, options = {})
  	text_area(method, options.merge(class: 'input100', id:'message', placeholder: 'Write us a message'))
  end

end

