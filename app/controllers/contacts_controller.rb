class ContactsController < ApplicationController
  include Jsonld
  before_action :admin, only: [:index, :destroy, :destroy_all]

  def index
    @contacts = Contact.all.order('created_at DESC')
  end

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

    def destroy
      @contact = Contact.find(params[:id])
      @contact.destroy

      redirect_to contacts_path
    end

    def destroy_all
      Contact.destroy_all
      redirect_to contacts_path
    end


  private

  def contact_params
    params.require(:contact).permit(:email, :body)
  end

  def admin
    unless current_user && current_user.admin?
      flash[:danger] = "How dare you use your guile tactics on us!"
      redirect_to '/cats'
    end
  end

end
