class Vote < ActiveRecord::Base
  belongs_to :student
  has_one :message
end
