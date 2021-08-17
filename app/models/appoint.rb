class Appoint < ApplicationRecord
  validates_presence_of :name, :matric, :phone, :email, :services, :issue
end
