class EnquiryMailer < ActionMailer::Base

  default from: "shalinidal@gmail.com"

  def enquiry_email(enquirer)
  	@enquirer = enquirer
  	mail(:to => "shalinidal@gmail.com", :subject => "Enquiry")

  end

end