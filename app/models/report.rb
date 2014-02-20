class Report < ActiveRecord::Base
  belongs_to :user
  has_one :service
end
