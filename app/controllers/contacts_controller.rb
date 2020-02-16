class ContactsController < ApplicationController
  include Jsonld

  def new
    @contact = Contact.new
    json_ld('Contact Us', 'media/images/header/cat.png',
      '2019-12-15 22:18:04 UTC', '2019-12-15 22:18:04 UTC', new_contact_path,
      "Contact Feline's Fancy or give some feedback")
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to root_path
  end


  private

  def contact_params
    params.require(:contact).permit(:email, :body)
  end

end
