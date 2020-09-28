class Contact < ApplicationRecord
  validates_presence_of :first_name,:last_name, :message
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_format_of :phone_number, with: /\A\+(?:[0-9]●?){6,14}[0-9]\Z/
end
