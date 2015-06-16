class PagesController < ApplicationController
  def index
  end

  def contact
    redirect_to root_path
  end

  def resume
    rogmans_resume = File.join(Rails.root, 'app/assets/files/rogmans_resume.pdf')
    send_file(rogmans_resume, :filename => "rogmans_resume.pdf", :disposition => 'inline', :type => "application/pdf")
  end
end
