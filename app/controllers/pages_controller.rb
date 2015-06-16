class PagesController < ApplicationController
  def index
  end

  def contact
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactMailer.send_contact_message(name, email, message).deliver
    redirect_to root_path, notice: "Thank you for contacting. You'll here from me shortly"
  end

  def resume
    rogmans_resume = File.join(Rails.root, 'app/assets/files/rogmans_resume.pdf')
    send_file(rogmans_resume, :filename => "rogmans_resume.pdf", :disposition => 'inline', :type => "application/pdf")
  end
end
