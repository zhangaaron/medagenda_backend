class Patient < ActiveRecord::Base
  has_many :status
  has_many :tasks

end
