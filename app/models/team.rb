class Team < ActiveRecord::Base
  belongs_to    :owner,   class_name: :employee
  has_many    :employee_teams
  has_many   :members,    class_name: "Employee",
                          through:   :employee_teams,
                          source:    :employee
  has_many  :progress_reports
end
