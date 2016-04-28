class Task < ActiveRecord::Base
  belongs_to :patient
  scope :not_done, -> { where(done: false)}
end
