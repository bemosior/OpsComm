class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :service

  validates_presence_of :service_id
  validates_presence_of :reproduce
end
