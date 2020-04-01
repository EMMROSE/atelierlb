class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      mail = ContactMailer.general_message(@contact).deliver
      redirect_to root_path
    else render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :address, :phone, :message)
  end
end
