class Enquiry < ActiveRecord::Base
  attr_accessible :email, :message, :name, :subject
end
