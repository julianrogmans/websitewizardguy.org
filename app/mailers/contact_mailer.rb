class ContactMailer < ApplicationMailer
  def send_contact_message(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(to: 'websitewizardguy@gmail.com', from: @email, subject: 'Message from websitewizardguy.com')
  end
end
