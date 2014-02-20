class Service < ActiveRecord::Base
  has_and_belongs_to_many :contact
  has_many :report
end
