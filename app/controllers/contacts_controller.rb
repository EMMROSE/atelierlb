class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      mail = contactMailer.general_message(@contact).deliver
      flash.notice = "Merci! votre message a été transmis."
      redirect_to root_path
    else
      #flash.now[:error] = t('flash.contact.error_html')
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :address, :phone, :message)
  end
end
