class ProgressReport < ActiveRecord::Base
  belongs_to    :author,     :class_name => :employee
  belongs_to   :team 
end
