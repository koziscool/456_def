class EmployeeTeam < ActiveRecord::Migration
  def change
    create_table :employee_team do |t|
      t.integer   :employee_id
      t.integer   :team_id
    end
  end
end
