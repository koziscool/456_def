class Team < ActiveRecord::Base
  belongs_to    :owner,   class_name: :employee
  has_many   :members, class_name: :employee
  has_many  :progress_reports, 
end
