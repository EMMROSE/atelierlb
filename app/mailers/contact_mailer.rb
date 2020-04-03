class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.general_message.subject
  #
  def general_message(contact)
    @contact = contact
    mail(
      to:       "emrose351@gmail.com",
      subject:  "New Message from Atelier LB"
    )
  end
end
